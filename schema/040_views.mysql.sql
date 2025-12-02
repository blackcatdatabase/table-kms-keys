-- Auto-generated from schema-views-mysql.yaml (map@94ebe6c)
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
