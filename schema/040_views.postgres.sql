-- Auto-generated from schema-views-postgres.psd1 (map@db2f8b8)
-- engine: postgres
-- table:  kms_keys
-- Contract view for [kms_keys]
CREATE OR REPLACE VIEW vw_kms_keys AS
SELECT
  id,
  provider_id,
  external_key_ref,
  purpose,
  algorithm,
  status,
  created_at
FROM kms_keys;
