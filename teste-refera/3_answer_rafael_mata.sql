WITH
    cliente_por_mes AS
    (SELECT DISTINCT
        rt.customer_id AS cliente,
        MIN(DATE_TRUNC('month', rt.rental_date)) 
    OVER(PARTITION BY rt.customer_id ORDER BY rt.rental_date) AS dt_registro_inicial
    FROM rental AS rt
    )
SELECT DATE(mes.dt_registro_inicial) AS mês_entrada_cliente, COUNT(mes.dt_registro_inicial) AS quantidade_de_clientes
FROM cliente_por_mes AS mes
GROUP BY mês_entrada_cliente
ORDER BY mês_entrada_cliente;