-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  kms_keys

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_keys_provider_ref ON kms_keys (provider_id, external_key_ref);
