/* FAZENDO A SOMA DAS CONTAGENS DO film_id PARTICIONANDO PELO MESMO SEM A NECESSIDADE DE FAZER UMA SUBQUERY */
SELECT fl.title AS titulo_filme,SUM(COUNT(iv.film_id))
OVER(PARTITION BY iv.film_id) AS quantidade
FROM inventory AS iv
    /* 2 INNER JOINS COM A TABELA inventory COM AS TABELAS rental E film */
    INNER JOIN rental AS rt ON rt.inventory_id=iv.inventory_id
    INNER JOIN film AS fl ON fl.film_id=iv.film_id
GROUP BY iv.film_id,titulo_filme
ORDER BY quantidade DESC
LIMIT 2;