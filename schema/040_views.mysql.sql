-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  kms_keys_status_by_provider
-- KMS keys status per provider
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_kms_keys_status_by_provider AS
SELECT
  p.provider,
  p.name AS provider_name,
  COUNT(k.id) AS total,
  SUM(CASE WHEN k.status = 'active'   THEN 1 ELSE 0 END) AS active,
  SUM(CASE WHEN k.status = 'retired'  THEN 1 ELSE 0 END) AS retired,
  SUM(CASE WHEN k.status = 'disabled' THEN 1 ELSE 0 END) AS disabled
FROM kms_keys k
JOIN kms_providers p ON p.id = k.provider_id
GROUP BY p.provider, p.name
ORDER BY p.provider, p.name;

-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  kms_keys
-- Contract view for [kms_keys]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_kms_keys AS
SELECT
  id,
  provider_id,
  external_key_ref,
  purpose,
  algorithm,
  status,
  created_at
FROM kms_keys;

