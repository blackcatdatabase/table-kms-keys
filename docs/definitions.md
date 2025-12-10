# kms_keys

External KMS key references. UNIQUE (provider_id, external_key_ref).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| provider_id | BIGINT | NO |  | KMS provider (FK kms_providers.id). |
| external_key_ref | VARCHAR(512) | NO |  | Provider-specific key identifier. Part of UNIQUE (provider_id, external_key_ref). |
| purpose | mysql: ENUM('wrap','encrypt','both') / postgres: TEXT | NO | wrap | Primary purpose. (enum: wrap, encrypt, both) |
| algorithm | VARCHAR(64) | YES |  | Algorithm or template id. |
| status | mysql: ENUM('active','retired','disabled') / postgres: TEXT | NO | active | Lifecycle status. (enum: active, retired, disabled) |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_kms_keys_provider_ref | provider_id, external_key_ref |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_kms_keys_provider_ref | provider_id,external_key_ref | CREATE UNIQUE INDEX ux_kms_keys_provider_ref ON kms_keys (provider_id, external_key_ref) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_kms_keys_provider | provider_id | kms_providers(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_kms_keys_provider_ref | provider_id, external_key_ref |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_kms_keys_provider_ref | provider_id,external_key_ref | CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_keys_provider_ref ON kms_keys (provider_id, external_key_ref) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_kms_keys_provider | provider_id | kms_providers(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_kms_keys | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_kms_keys_status_by_provider | mysql | algorithm=TEMPTABLE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_kms_keys | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
| vw_kms_keys_status_by_provider | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
