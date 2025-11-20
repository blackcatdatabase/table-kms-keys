-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  kms_keys_status_by_provider
-- KMS keys status per provider
CREATE OR REPLACE VIEW vw_kms_keys_status_by_provider AS
SELECT
  p.provider,
  p.name        AS provider_name,
  COUNT(k.id)   AS total,
  COUNT(k.id) FILTER (WHERE k.status=''active'')    AS active,
  COUNT(k.id) FILTER (WHERE k.status=''retired'')   AS retired,
  COUNT(k.id) FILTER (WHERE k.status=''disabled'')  AS disabled
FROM kms_keys k
JOIN kms_providers p ON p.id = k.provider_id
GROUP BY p.provider, p.name
ORDER BY p.provider, p.name;

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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

