DELETE FROM person_order
WHERE order_date = '2022-02-25';

DELETE FROM menu
WHERE pizza_name = 'greek pizza'

SELECT COUNT(*) = 0 AS cher_order FROM person_order
WHERE order_date = '2022-02-25';

SELECT COUNT(*) = 0 AS chek_menu FROM menu
WHERE pizza_name = 'greek pizza'
