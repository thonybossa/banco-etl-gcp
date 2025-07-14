SELECT
  COUNT(*) AS total,
  COUNT(DISTINCT numero_identificacion) AS clientes_unicos,
  COUNT(DISTINCT fecha_hora) AS fechas_unicas,
  COUNTIF(fecha_hora IS NULL) AS fechas_nulas
FROM dwh.limpio_transacciones;