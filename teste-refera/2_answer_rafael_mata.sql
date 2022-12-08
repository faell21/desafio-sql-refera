WITH
    top_16 AS
    (SELECT fl.title, iv.film_id, COUNT(iv.film_id) AS soma_filme 
    FROM inventory AS iv
        INNER JOIN rental AS rt ON rt.inventory_id=iv.inventory_id
        INNER JOIN film AS fl ON fl.film_id = iv.film_id
    GROUP BY iv.film_id,fl.title
    ORDER BY soma_filme DESC
    LIMIT 16
    )
SELECT CONCAT(act.first_name ,' ', act.last_name) AS nome_comp 
FROM actor AS act	
    INNER JOIN film_actor AS fl ON act.actor_id = fl.actor_id
    INNER JOIN top_16 tops ON tops.film_id = fl.film_id
GROUP BY act.first_name, act.last_name
ORDER BY COUNT(*) DESC
LIMIT 1;