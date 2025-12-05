-- Auto-generated from joins-mysql.yaml (map@sha1:DA70105A5B799F72A56FEAB71A5171F946A770D2)
-- engine: mysql
-- view:   kms_keys_status_by_provider

CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_kms_keys_status_by_provider AS
SELECT
  p.provider,
  p.name AS provider_name,
  COUNT(k.id) AS total,
  SUM(CASE WHEN k.status = 'active'   THEN 1 ELSE 0 END) AS active,
  SUM(CASE WHEN k.status = 'retired'  THEN 1 ELSE 0 END) AS retired,
  SUM(CASE WHEN k.status = 'disabled' THEN 1 ELSE 0 END) AS disabled
FROM kms_keys k
JOIN kms_providers p ON p.id = k.provider_id
GROUP BY p.provider, p.name
ORDER BY p.provider, p.name;
