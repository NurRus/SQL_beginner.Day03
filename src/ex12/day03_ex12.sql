INSERT INTO person_order (id, person_id, menu_id, order_date)
    SELECT gs + (SELECT MAX(id) FROM person_order) AS id,
        gs as person_id,
        (SELECT menu.id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id,
        '2022-02-25' AS order_date
    FROM person 
    JOIN generate_series(1, (SELECT MAX(id) FROM person)) AS gs ON gs = person.id;

SELECT count(*) = 9 AS check_order FROM person_order
WHERE order_date = '2022-02-25';