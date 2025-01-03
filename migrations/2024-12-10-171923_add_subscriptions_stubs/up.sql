--
-- SUBSCRIPTIONS DATA MIGRATION
--

INSERT INTO "subscriptions" (
  "id",
  "user_id",
  "app_id",
  "payment_method_id",
  "category_id",
  "interval_value",
  "interval_type",
  "price",
  "currency",
  "first_payment",
  "next_payment"
) VALUES (
  'df7126d5-44e4-4475-8257-97d637b64d1d', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '0c495fa5-a0aa-49a9-b0f1-53d4526791d4', -- Spotify
  '00b3d5fa-50af-4e9d-b4b3-17eba0c49152', -- Apple Store
  'c36f2f16-01e0-4ae7-b72d-596af02424f5', -- Music category
  1,
  'month',
  9.99,
  'EUR',
  '2023-11-15 00:00:00+00',
  '2024-11-15 00:00:00+00'
), (
  'c49d4c9a-d6d8-4c9a-9f4d-8f3b8e4c9d4c', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '62f3a215-1310-4e56-a63a-2c70012a2427', -- Netflix
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  15.99,
  'USD',
  '2023-11-20 00:00:00+00',
  '2024-11-20 00:00:00+00'
), (
  'a1b2c3d4-e5f6-4a5b-8c7d-9e8f7a6b5c4d', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '4b62f62a-f2e5-4638-ad99-28a570dd8c25', -- ChatGPT
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  '680f0da2-d9b0-4f79-8809-347f2923a492', -- AI category
  3,
  'month',
  20.00,
  'USD',
  '2024-01-01 00:00:00+00',
  '2024-04-01 00:00:00+00'
), (
  'a26f305e-5087-4af3-ba5f-6a7d8fcaddcc', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'e46f707e-5087-4cf3-b45f-65778fca95cc', -- Kinopoisk
  '88db8f2e-6b1a-45b3-9561-d983824a3507', -- Debit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  599.00,
  'RUB',
  '2024-12-15 00:00:00+00', -- Trial (future date)
  '2025-01-15 00:00:00+00'
), (
  'b2c3d4e5-f6a7-4b5c-9d8e-0f1d2d3d4d5a', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'ecbc5168-f1c7-4b35-a723-27e9991a1191', -- GitHub
  '88db8f2e-6b1a-45b3-9561-d983824a3507', -- Debit Card
  'db03adff-a6fc-4d8d-b4c1-39e8600a9655', -- Dev category
  1,
  'annual',
  100.00,
  'USD',
  '2024-02-01 00:00:00+00',
  '2025-02-01 00:00:00+00'
), (
  '3bb82787-1354-42fb-92ac-e0189b98e659', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '5ba1ca3c-da97-4aa7-a979-db2f6c0086be', -- NordVPN
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  'ad7ebd55-5d7d-48b8-a6b1-077e4a9f7363', -- VPN category
  2,
  'annual',
  89.99,
  'GBP',
  '2024-03-01 00:00:00+00',
  '2026-03-01 00:00:00+00'
), (
  'e2d36b08-dde7-48ab-ae8e-4d25b5039384', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'aaf9c7ca-5205-414f-8562-fd860ca97a4f', -- AdGuard
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  'eaef2630-3cea-4095-8b72-40e397ec013a', -- Utilities category
  6,
  'month',
  29.99,
  'AUD',
  '2024-04-01 00:00:00+00',
  '2024-10-01 00:00:00+00'
), (
  '90797427-d87c-4478-be27-f7cfa11b4786', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'b0f42b43-f913-440e-8190-d12d13a40b2a', -- Apple Music
  '00b3d5fa-50af-4e9d-b4b3-17eba0c49152', -- Apple Store
  'c36f2f16-01e0-4ae7-b72d-596af02424f5', -- Music category
  1,
  'month',
  1380.00,
  'JPY',
  '2024-05-01 00:00:00+00',
  '2024-06-01 00:00:00+00'
), (
  '96f7a00b-f7df-46e1-86b3-229329c24db4', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '405365d2-7a64-4b72-8271-9e2111184f5a', -- Boosty
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  '57e2fa37-b6ba-4340-a8f1-ef431612bf08', -- Monetization category
  1,
  'month',
  299.00,
  'RUB',
  '2024-12-20 00:00:00+00', -- Trial (future date)
  '2025-01-20 00:00:00+00'
), (
  '9a6c38ac-6362-4a49-851c-1e119a1b557e', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '9db0d6dc-22e7-4c2a-96d7-001dfacf21ca', -- Adobe
  '00b3d5fa-50af-4e9d-b4b3-17eba0c49152', -- Apple Store
  'a5e9a997-ce4c-4751-a9ba-96f3ec7029d4', -- Creativity category
  1,
  'month',
  52.99,
  'EUR',
  '2024-06-01 00:00:00+00',
  '2024-07-01 00:00:00+00'
), (
  'b44830e4-f9c0-42fc-af07-3c4c08e8f883', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'f32d1877-0e4d-4355-9ea0-464deef4f06f', -- Vultr
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '69e45825-a4e0-4c19-9351-ce95a807c158', -- Hosting category
  1,
  'month',
  69.90,
  'CNY',
  '2024-12-25 00:00:00+00', -- Trial (future date)
  '2025-01-25 00:00:00+00'
), (
  '70cfa791-ef05-4455-b6e9-08e3afdec87c', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '84f436c0-d247-47f8-812b-fef9496c5b24', -- HBO Max
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  14.99,
  'USD',
  '2024-07-01 00:00:00+00',
  '2024-08-01 00:00:00+00'
), (
  '7a679c31-2124-42b5-80b6-916f85868a7e', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '761a216f-8ced-4121-9cf8-104021a66671', -- Apple TV+
  '00b3d5fa-50af-4e9d-b4b3-17eba0c49152', -- Apple Store
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  6.99,
  'USD',
  '2024-07-15 00:00:00+00',
  '2024-08-15 00:00:00+00'
), (
  'be6dbbab-f2e2-4d61-be25-4c8ceabf1eac', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '4338b59d-424d-41a9-850b-b5b7769ee325', -- Disney+
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'annual',
  79.99,
  'USD',
  '2024-08-01 00:00:00+00',
  '2025-08-01 00:00:00+00'
), (
  'a9a1d456-6bf4-4100-a9a9-f84601521d53', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'c0bf89cc-daa6-4058-8833-5130273d8dfc', -- Paramount+
  '88db8f2e-6b1a-45b3-9561-d983824a3507', -- Debit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  9.99,
  'USD',
  '2024-08-15 00:00:00+00',
  '2024-09-15 00:00:00+00'
), (
  'b589fe2e-3121-4926-b131-8c9bf0d06d06', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '60479599-a9c6-4279-92f3-d7298f40d517', -- Discovery+
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  4.99,
  'EUR',
  '2024-09-01 00:00:00+00',
  '2024-10-01 00:00:00+00'
), (
  '4bc2015c-44c3-4505-9d8a-b76d1fc5a463', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'f93d1086-0b57-4a81-b5fd-99bc8eb0bd7a', -- Curiosity Stream
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'annual',
  39.99,
  'USD',
  '2024-09-15 00:00:00+00',
  '2025-09-15 00:00:00+00'
), (
  '456dc185-bd68-4a2a-a6b8-2bda9e86f34f', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'e5fc6da8-19d1-43c6-b6e2-6575efa44dcb', -- NOW
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  3,
  'month',
  29.99,
  'GBP',
  '2024-02-15 00:00:00+00',
  '2024-05-15 00:00:00+00'
), (
  'f4870418-9121-4e2c-8b7d-72d6d30b1018', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '20474a89-0cbd-4709-bd3c-27ffde412d19', -- Ivi
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  399.00,
  'RUB',
  '2024-03-01 00:00:00+00',
  '2024-04-01 00:00:00+00'
), (
  '356f84cf-217c-4b29-8016-3d1b20bf0594', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'f2f4143c-697a-4533-93b0-b306baaf1ee8', -- Okko
  '88db8f2e-6b1a-45b3-9561-d983824a3507', -- Debit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  1,
  'month',
  549.00,
  'RUB',
  '2024-03-15 00:00:00+00',
  '2024-04-15 00:00:00+00'
), (
  'eecfa3bc-6e9f-4b80-8918-5592981686d5', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'c6f1f309-cafe-43fd-8609-a7375e67da65', -- Anime365
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '28167422-c5d1-4708-807a-6a6af4c56198', -- Video category
  6,
  'month',
  499.00,
  'RUB',
  '2024-04-01 00:00:00+00',
  '2024-10-01 00:00:00+00'
), (
  'cc99cd36-27f9-4d22-a23f-eb47c0ae75be', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'dc920e8f-0288-4f8d-8157-9783ffd66b8e', -- Sketch
  '00b3d5fa-50af-4e9d-b4b3-17eba0c49152', -- Apple Store
  'a5e9a997-ce4c-4751-a9ba-96f3ec7029d4', -- Creativity category
  1,
  'annual',
  99.00,
  'USD',
  '2024-05-01 00:00:00+00',
  '2025-05-01 00:00:00+00'
), (
  'a301f278-3bcd-4ffb-b357-77f201f6c608', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '937bda83-5f12-49e1-96ea-4a6909375e0c', -- Coursehunter
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  'bc6238e6-1555-4320-9d33-0b2835313792', -- Education category
  1,
  'annual',
  89.00,
  'EUR',
  '2024-06-01 00:00:00+00',
  '2025-06-01 00:00:00+00'
), (
  '1ec7ed6f-4c71-4256-b2b2-8a19dd4a4262', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'f18174ea-dacf-4fba-82dc-3451ae55923c', -- Coursetrain
  '88db8f2e-6b1a-45b3-9561-d983824a3507', -- Debit Card
  'bc6238e6-1555-4320-9d33-0b2835313792', -- Education category
  1,
  'annual',
  129.00,
  'USD',
  '2024-07-01 00:00:00+00',
  '2025-07-01 00:00:00+00'
), (
  '1d92fbd4-3b11-4278-a68b-bc0a72e24ba0', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '0663cb97-1f33-4e60-9d36-53f8dea57d77', -- Claude
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '680f0da2-d9b0-4f79-8809-347f2923a492', -- AI category
  1,
  'month',
  20.00,
  'USD',
  '2024-08-01 00:00:00+00',
  '2024-09-01 00:00:00+00'
), (
  'd0f803d7-a851-4c0f-875c-b557d9f71bb7', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '13bc4005-4c72-45c6-9033-0f2b5972b1c1', -- GitKraken
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  'db03adff-a6fc-4d8d-b4c1-39e8600a9655', -- Dev category
  1,
  'annual',
  49.00,
  'USD',
  '2024-09-01 00:00:00+00',
  '2025-09-01 00:00:00+00'
), (
  'c01984a5-0f35-4173-a268-16c7ce199e73', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  'cdc226f5-189e-4cc2-9c2c-cb796637c308', -- Warp
  '88db8f2e-6b1a-45b3-9561-d983824a3507', -- Debit Card
  'db03adff-a6fc-4d8d-b4c1-39e8600a9655', -- Dev category
  1,
  'month',
  15.00,
  'USD',
  '2024-10-01 00:00:00+00',
  '2024-11-01 00:00:00+00'
), (
  '585f0c80-1dc4-461d-8daf-dd7e82fac7c4', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '87b0a63f-db31-4c5b-8ed0-fa23a05590a8', -- Linode
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '69e45825-a4e0-4c19-9351-ce95a807c158', -- Hosting category
  1,
  'month',
  20.00,
  'USD',
  '2024-12-30 00:00:00+00', -- Trial (future date)
  '2025-01-30 00:00:00+00'
), (
  '04d4146a-2639-4664-b6b1-ea023df914df', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '8e9aed9c-8cd5-4117-8b69-8e0ea1920948', -- Heroku
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  '69e45825-a4e0-4c19-9351-ce95a807c158', -- Hosting category
  1,
  'month',
  25.00,
  'USD',
  '2024-01-15 00:00:00+00',
  '2024-02-15 00:00:00+00'
), (
  '0935386e-07e3-43d5-8898-b079a1db2891', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '81d3564e-0bd6-426f-b10e-323989302c12', -- Porkbun
  '88db8f2e-6b1a-45b3-9561-d983824a3507', -- Debit Card
  '69e45825-a4e0-4c19-9351-ce95a807c158', -- Hosting category
  1,
  'annual',
  60.00,
  'USD',
  '2024-02-01 00:00:00+00',
  '2025-02-01 00:00:00+00'
), (
  '9f8e0b51-297a-40cd-b6a0-76d9fd8c14d3', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '14bf1c8c-7ce4-4a7c-8182-82f1792c08b0', -- Namecheap
  '31c23f10-d072-4518-937d-22bc0e47b48d', -- Credit Card
  '69e45825-a4e0-4c19-9351-ce95a807c158', -- Hosting category
  1,
  'annual',
  40.00,
  'USD',
  '2024-03-01 00:00:00+00',
  '2025-03-01 00:00:00+00'
), (
  '0e9c9520-f9ea-48ad-922d-0e927fb5a960', -- self id
  '00000000-0000-0000-0000-000000000000', -- admin
  '09b40d10-4059-425b-a99d-39fe168ad8ae', -- Aeza
  'b94c6652-62cf-440d-987f-f04f0bfb4898', -- PayPal
  '69e45825-a4e0-4c19-9351-ce95a807c158', -- Hosting category
  1,
  'month',
  15.00,
  'EUR',
  '2024-04-01 00:00:00+00',
  '2024-05-01 00:00:00+00'
);