-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  kms_keys
ALTER TABLE kms_keys ADD CONSTRAINT fk_kms_keys_provider FOREIGN KEY (provider_id) REFERENCES kms_providers(id) ON DELETE CASCADE;
