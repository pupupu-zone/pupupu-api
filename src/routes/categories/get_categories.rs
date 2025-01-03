use actix_web::{web, Error, HttpResponse};
use serde::Deserialize;
use serde_json::json;

use crate::models::categories::category::ApiCategory;
use crate::service::data_providers::WebDataPool;
use crate::utils::{acquire_pg_connection, get_session_user_id};

#[derive(Debug, Deserialize)]
pub struct CategoriesQuery {
    #[serde(default)]
    limit: Option<i32>,
}

impl CategoriesQuery {
    fn validate(&self) -> Result<(), actix_web::error::Error> {
        /*
         * Validate limit if provided
         */
        if let Some(limit) = self.limit {
            if limit < 1 {
                return Err(actix_web::error::ErrorBadRequest(json!({
                    "code": 1014, // 400 - Invalid limit parameter
                })));
            }
        }

        Ok(())
    }

    fn build_query(&self) -> String {
        let with_limit = self.limit.is_some();

        let mut query = String::from(
            r#"
                SELECT
                    id,
                    user_id,
                    name,
                    color,
                    emoji,
                    is_default
                FROM
                    categories
                WHERE
                    user_id = $1 OR is_default = TRUE
            "#,
        );

        if with_limit {
            query.push_str("\nLIMIT $2");
        }

        query.push(';');
        query
    }
}

pub async fn get_categories(
    dp: web::Data<WebDataPool>,
    session: actix_session::Session,
    query: web::Query<CategoriesQuery>,
) -> Result<HttpResponse, Error> {
    /*
     * Check user authorization
     */
    let session_user_id = match get_session_user_id(&session).await {
        Ok(user_id) => user_id,
        Err(err) => {
            tracing::event!(target: "[GET CATEGORIES / AUTH]", tracing::Level::ERROR, "{}", err);

            return Err(actix_web::error::ErrorUnauthorized(json!({
                "code": 9999, // 401 - Session expired, redirect to /logout
            })));
        }
    };

    /*
     * Validate query parameters
     */
    query.validate()?;

    /*
     * Acquire database connection
     */
    let mut pg_connection = acquire_pg_connection(&dp).await?;

    /*
     * Build query
     */
    let query_string = query.build_query();
    let mut db_query = sqlx::query(&query_string).bind(&session_user_id);

    /*
     * Add limit parameter to query, if specified
     */
    if let Some(limit) = query.limit {
        db_query = db_query.bind(limit);
    }

    /*
     * Execute query
     */
    let categories = match db_query.fetch_all(&mut *pg_connection).await {
        Ok(rows) => rows
            .iter()
            .map(ApiCategory::from_row)
            .collect::<Vec<ApiCategory>>(),
        Err(err) => {
            tracing::event!(target: "[GET CATEGORIES / SQL]", tracing::Level::ERROR, "{}", err);

            return Err(actix_web::error::ErrorInternalServerError(json!({
                "code": 10000, // 500 - Empty
            })));
        }
    };

    Ok(HttpResponse::Ok().json(categories))
}
