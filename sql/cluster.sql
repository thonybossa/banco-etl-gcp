SELECT *
FROM `white-cider-305323.dwh.hechos_transacciones`
WHERE monto_reporte BETWEEN 100000 AND 300000
  AND ciudad = 'Barranquilla'
  AND tipo_transaccion = 'Compra'
  AND tiempo_en_mora BETWEEN 60 AND 91