WITH
    pnm AS (
    SELECT menu.id AS menu_id  FROM menu
    EXCEPT
    SELECT menu_id FROM person_order)
SELECT pizza_name, price, pz.name AS pizzeria_name
FROM menu 
JOIN pnm ON pnm.menu_id = menu.id
JOIN pizzeria pz ON pz.id = menu.pizzeria_id
ORDER BY 1, 2;