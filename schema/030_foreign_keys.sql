-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: kms_keys
ALTER TABLE kms_keys ADD CONSTRAINT fk_kms_keys_provider FOREIGN KEY (provider_id) REFERENCES kms_providers(id) ON DELETE CASCADE;
