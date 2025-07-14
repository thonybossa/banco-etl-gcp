CREATE OR REPLACE TABLE dwh.dim_producto AS
SELECT 
  tipo_producto_limpio,
  GENERATE_UUID() AS id_producto
FROM (
  SELECT DISTINCT
    TRIM(UPPER(tipo_producto)) AS tipo_producto_limpio
  FROM dwh.limpio_transacciones
  WHERE tipo_producto IS NOT NULL
);