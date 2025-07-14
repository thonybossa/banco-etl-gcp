CREATE OR REPLACE TABLE dwh.dim_tiempo AS
SELECT DISTINCT
  TIMESTAMP(fecha_hora) AS id_fecha_hora,
  EXTRACT(DATE FROM fecha_hora) AS fecha,
  EXTRACT(YEAR FROM fecha_hora) AS anio,
  EXTRACT(MONTH FROM fecha_hora) AS mes,
  EXTRACT(DAY FROM fecha_hora) AS dia,
  FORMAT_DATE('%B', DATE(fecha_hora)) AS nombre_mes,
  FORMAT_DATE('%A', DATE(fecha_hora)) AS dia_semana,
  EXTRACT(HOUR FROM fecha_hora) AS hora,
  EXTRACT(MINUTE FROM fecha_hora) AS minuto,
  EXTRACT(SECOND FROM fecha_hora) AS segundo
FROM dwh.limpio_transacciones
WHERE fecha_hora IS NOT NULL;