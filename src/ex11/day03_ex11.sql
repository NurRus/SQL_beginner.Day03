UPDATE menu set price = price * 0.9
WHERE pizza_name = 'greek pizza';

SELECT COUNT(*) = 1 AS check_menu FROM menu
WHERE pizza_name = 'greek pizza' AND price = 720