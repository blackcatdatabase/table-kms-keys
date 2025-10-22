<!-- Auto-generated from schema-map.psd1 @ 6cefe8e (2025-10-22T20:27:41+02:00) -->
# Definition – kms_keys

External KMS key references.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| provider_id | BIGINT UNSIGNED | NO | — | KMS provider (FK kms_providers.id). |  |
| external_key_ref | VARCHAR(512) | NO | — | Provider-specific key identifier. |  |
| purpose | ENUM('wrap','encrypt','both') | NO | 'wrap' | Primary purpose. | enum: wrap, encrypt, both |
| algorithm | VARCHAR(64) | YES | — | Algorithm or template id. |  |
| status | ENUM('active','retired','disabled') | NO | 'active' | Lifecycle status. | enum: active, retired, disabled |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |