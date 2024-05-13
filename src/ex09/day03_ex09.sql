INSERT INTO person_visits 
    SELECT (SELECT(MAX(id) + 1) FROM person_visits), 4, 2, '2022-02-24';
INSERT INTO person_visits 
    SELECT (SELECT(MAX(id) + 1) FROM person_visits), 6, 2, '2022-02-24';

SELECT COUNT(*) = 2 AS chek_visit FROM person_visits
WHERE(
    (visit_date = '2022-02-24' AND person_id = 4) OR
    (visit_date = '2022-02-24' AND person_id = 6)
)