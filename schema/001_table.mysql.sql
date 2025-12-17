-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  kms_keys

CREATE TABLE IF NOT EXISTS kms_keys (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  provider_id BIGINT UNSIGNED NOT NULL,
  external_key_ref VARCHAR(512) NOT NULL,
  purpose ENUM('wrap','encrypt','both') NOT NULL DEFAULT 'wrap',
  algorithm VARCHAR(64) NULL,
  status ENUM('active','retired','disabled') NOT NULL DEFAULT 'active',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
