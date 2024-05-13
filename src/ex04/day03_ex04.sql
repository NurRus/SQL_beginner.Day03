WITH
    male AS(
    SELECT pr.id AS pr_id FROM person pr
    WHERE pr.gender = 'male' 
    ),
    female AS(
    SELECT pr.id AS pr_id FROM person pr
    WHERE pr.gender = 'female'
    ),
    mord AS (
    SELECT menu_id AS mm_id FROM person_order po
    JOIN male ON pr_id = person_id
    ),
    ford AS (
    SELECT menu_id AS fm_id FROM person_order po
    JOIN female ON pr_id = person_id
    ),
    pm AS(
    SELECT menu.id AS menu_id, pz.name AS pizzeria_name FROM pizzeria pz
    JOIN menu ON pizzeria_id = pz.id
    ),
    mpz AS(
    SELECT pizzeria_name AS mp_name FROM pm
    JOIN mord ON mm_id = menu_id
    ),
    fpz AS(
    SELECT pizzeria_name AS fp_name FROM pm
    JOIN ford ON fm_id = menu_id
    ),
    onlym AS (
    SELECT mp_name FROM mpz
    FULL OUTER JOIN fpz ON fp_name = mp_name
    WHERE fp_name IS NULL
    ),
    onlyf AS (
    SELECT fp_name FROM fpz
    FULL OUTER JOIN mpz ON mp_name = fp_name
    WHERE mp_name  IS NULL
    )
SELECT mp_name AS pizzeria_name FROM onlym
UNION
SELECT fp_name AS pizzeria_name FROM onlyf
ORDER BY 1; 
