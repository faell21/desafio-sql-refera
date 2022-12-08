SELECT fl.title AS titulo_filme,SUM(COUNT(iv.film_id)) 
OVER(PARTITION BY iv.film_id) AS quantidade 
FROM inventory AS iv
    INNER JOIN rental AS rt ON rt.inventory_id=iv.inventory_id
    INNER JOIN film AS fl ON fl.film_id=iv.film_id
GROUP BY iv.film_id,titulo_filme
ORDER BY quantidade DESC
LIMIT 2;