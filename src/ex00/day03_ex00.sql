WITH
    pzm AS (
    SELECT pizza_name, price, pz.name AS pizzeria_name, pz.id AS pizzeria_id
    FROM menu JOIN pizzeria pz ON pz.id = menu.pizzeria_id
    WHERE price BETWEEN 800 AND 1000)
SELECT  pizza_name, price, pizzeria_name, visit_date
FROM pzm 
JOIN person_visits pv ON pv.pizzeria_id = pzm.pizzeria_id
JOIN person pr ON pr.id = pv.person_id
WHERE pr.name = 'Kate'
ORDER BY 1, 2, 3;