-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  kms_keys
CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_keys_provider_ref ON kms_keys (provider_id, external_key_ref);
