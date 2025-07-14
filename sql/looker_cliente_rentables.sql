CREATE OR REPLACE VIEW dwh.v_clientes_mas_rentables AS
SELECT
  c.nombres,
  c.numero_identificacion,
  c.ciudad,
  COUNT(*) AS total_transacciones,
  SUM(h.monto_transaccion) AS monto_total_transado,
  MAX(h.fecha_hora) AS ultima_transaccion
FROM dwh.hechos_transacciones h
JOIN dwh.dim_cliente c ON h.id_cliente = c.id_cliente
GROUP BY c.nombres, c.numero_identificacion, c.ciudad;