-- Auto-generated from schema-map-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  kms_keys
ALTER TABLE kms_keys ADD CONSTRAINT fk_kms_keys_provider FOREIGN KEY (provider_id) REFERENCES kms_providers(id) ON DELETE CASCADE;
