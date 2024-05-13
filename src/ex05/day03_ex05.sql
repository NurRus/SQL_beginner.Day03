WITH
    pva AS(
    SELECT pizzeria_id AS pva_id, person_id AS pv_id FROM person_visits pv
    JOIN person pr ON pr.id = pv.person_id
    WHERE pr.name = 'Andrey'
    ),
    poa AS (
    SELECT pizzeria_id AS poa_id FROM person_order po
    JOIN menu ON menu.id = menu_id
    JOIN person pr ON pr.id = po.person_id
    WHERE pr.name = 'Andrey'
    ),
    pvno AS(
    SELECT pva_id FROM pva
    LEFT JOIN poa ON pva_id = poa_id
    WHERE poa_id IS NULL
    )
SELECT pz.name AS pizzeria_name FROM pizzeria pz
JOIN pvno ON pva_id = pz.id
ORDER BY 1;