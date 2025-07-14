CREATE OR REPLACE TABLE dwh.hechos_transacciones AS
SELECT
  dc.id_cliente,
  dp.id_producto,
  dt.id_fecha_hora,
  dr.tiene_reporte,
  dr.monto_reporte,
  dr.tiempo_en_mora,
  lt.fecha_hora,
  lt.tipo_transaccion,
  lt.monto_transaccion,
  lt.ciudad,
  CURRENT_TIMESTAMP() AS fecha_carga
FROM dwh.limpio_transacciones lt
JOIN dwh.dim_cliente dc ON lt.numero_identificacion = dc.numero_identificacion
JOIN dwh.dim_producto dp ON TRIM(UPPER(lt.tipo_producto)) = dp.tipo_producto_limpio
JOIN dwh.dim_riesgo dr ON lt.numero_identificacion = dr.numero_identificacion
JOIN dwh.dim_tiempo dt ON TIMESTAMP(lt.fecha_hora) = dt.id_fecha_hora
WHERE lt.numero_identificacion IS NOT NULL;