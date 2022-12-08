/* CTE PARA SELECIONAR O TOP 16 FILMES MAIS ASSISTIDOS */
WITH
    top_16 AS
    (SELECT fl.title, iv.film_id, COUNT(iv.film_id) AS soma_filme 
    FROM inventory AS iv
        /* 2 INNER JOINS COM A TABELA inventory COM AS TABELAS rental E film */
        INNER JOIN rental AS rt ON rt.inventory_id=iv.inventory_id
        INNER JOIN film AS fl ON fl.film_id = iv.film_id
    GROUP BY iv.film_id,fl.title
    ORDER BY soma_filme DESC
    LIMIT 16
    )
/* USANDO A FUNÇÃO CONCAT PARA CONCATENAR O 1º E 2º NOME DOS ATORES */
SELECT CONCAT(act.first_name ,' ', act.last_name) AS nome_comp 
FROM actor AS act
    /* 2 INNER JOINS UM COM A TABELA actor E filme_actor, O OUTRO COM O CTE top_16 E O film_actor */
    INNER JOIN film_actor AS fl ON act.actor_id = fl.actor_id
    INNER JOIN top_16 AS tops ON tops.film_id = fl.film_id
GROUP BY act.first_name, act.last_name
ORDER BY COUNT(*) DESC
LIMIT 1;