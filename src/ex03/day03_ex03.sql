--ex03
WITH pepl_pz AS (
    SELECT gender, pz.name AS pizzeria_name
    FROM person_visits pv
    LEFT JOIN person pr ON pr.id = pv.person_id
    LEFT JOIN pizzeria pz ON pz.id = pv.pizzeria_id
)
(SELECT pizzeria_name FROM pepl_pz  WHERE gender = 'female'
EXCEPT ALL
SELECT pizzeria_name FROM pepl_pz  WHERE gender = 'male')
UNION ALL
(SELECT pizzeria_name FROM pepl_pz WHERE gender = 'male'
EXCEPT ALL
SELECT pizzeria_name FROM pepl_pz WHERE gender = 'female')
ORDER BY 1;