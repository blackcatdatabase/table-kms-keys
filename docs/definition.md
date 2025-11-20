<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – kms_keys

External KMS key references. UNIQUE (provider_id, external_key_ref).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| provider_id | BIGINT | NO | — | KMS provider (FK kms_providers.id). |  |
| external_key_ref | VARCHAR(512) | NO | — | Provider-specific key identifier. Part of UNIQUE (provider_id, external_key_ref). |  |
| purpose | TEXT | NO | 'wrap' | Primary purpose. | enum: wrap, encrypt, both |
| algorithm | VARCHAR(64) | YES | — | Algorithm or template id. |  |
| status | TEXT | NO | 'active' | Lifecycle status. | enum: active, retired, disabled |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |