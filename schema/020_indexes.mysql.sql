-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  kms_keys

CREATE UNIQUE INDEX ux_kms_keys_provider_ref ON kms_keys (provider_id, external_key_ref);
