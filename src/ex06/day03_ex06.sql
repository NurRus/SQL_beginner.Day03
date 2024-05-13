WITH
    pn AS (
    SELECT pizza_name, name, price, pizzeria_id FROM pizzeria pz
    JOIN menu ON menu.pizzeria_id = pz.id
    )
SELECT DISTINCT pn1.pizza_name, 
    LEAST(pn1.name, pn2.name) AS pizzeria_name_1,
    GREATEST(pn1.name, pn2.name) AS pizzeria_name_2, pn1.price
FROM pn pn1
JOIN pn pn2 ON pn2.price = pn1.price AND pn2.pizza_name = pn1.pizza_name
WHERE pn1.pizzeria_id != pn2.pizzeria_id
ORDER BY 1;