-- Auto-generated from core\joins-postgres.yaml (map@sha1:29CF395A3A4C8964482083733F8E613ABFBEF5CC)
-- engine: postgres
-- view:   kms_keys_status_by_provider

-- KMS keys status per provider
CREATE OR REPLACE VIEW vw_kms_keys_status_by_provider AS
SELECT
  p.provider,
  p.name        AS provider_name,
  COUNT(k.id)   AS total,
  COUNT(k.id) FILTER (WHERE k.status='active')   AS active,
  COUNT(k.id) FILTER (WHERE k.status='retired')  AS retired,
  COUNT(k.id) FILTER (WHERE k.status='disabled') AS disabled
FROM kms_keys k
JOIN kms_providers p ON p.id = k.provider_id
GROUP BY p.provider, p.name
ORDER BY p.provider, p.name;
