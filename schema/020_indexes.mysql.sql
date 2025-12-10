-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  kms_keys

CREATE UNIQUE INDEX ux_kms_keys_provider_ref ON kms_keys (provider_id, external_key_ref);
