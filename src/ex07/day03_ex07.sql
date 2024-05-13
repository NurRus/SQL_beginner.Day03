INSERT INTO menu
SELECT 19, 2, 'greek pizza', 800

SELECT COUNT(*) = 1 AS check_menu FROM menu
WHERE pizza_name = 'greek pizza';