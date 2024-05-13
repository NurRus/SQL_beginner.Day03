INSERT INTO person_order
    SELECT (SELECT(MAX(id) + 1) FROM person_order), 4, 20, '2022-02-24';
INSERT INTO person_order
    SELECT (SELECT(MAX(id) + 1) FROM person_order), 6, 20, '2022-02-24';

SELECT COUNT(*) = 2 AS check_order FROM person_order
WHERE(
    (order_date = '2022-02-24' AND person_id = 4) OR
    (order_date = '2022-02-24' AND person_id = 6)
);