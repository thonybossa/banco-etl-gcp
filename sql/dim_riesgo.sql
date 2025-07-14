CREATE OR REPLACE TABLE dwh.dim_riesgo AS
SELECT DISTINCT
  numero_identificacion,
  tiene_reporte,
  monto_reporte,
  tiempo_en_mora
FROM dwh.limpio_transacciones
WHERE numero_identificacion IS NOT NULL;