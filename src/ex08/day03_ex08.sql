INSERT INTO menu
SELECT (SELECT (MAX(id) + 1) FROM menu), 2, 'sicilian pizza', 900

SELECT COUNT(*) = 1 AS check_menu FROM menu
WHERE pizza_name = 'sicilian pizza';