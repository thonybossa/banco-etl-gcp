CREATE OR REPLACE TABLE dwh.dim_cliente AS
SELECT DISTINCT
  GENERATE_UUID() AS id_cliente,
  numero_identificacion,
  tipo_identificacion,
  nombres,
  direccion,
  telefono,
  correo,
  fecha_nacimiento,
  ciudad
FROM dwh.limpio_transacciones
WHERE numero_identificacion IS NOT NULL;