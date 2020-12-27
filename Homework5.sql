-- «Операторы, фильтрация, сортировка и ограничение» --
-- 1 задание --

INSERT INTO users (created_at, updated_at) 
VALUES ('users', NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

-- 2 задание --

SELECT CONVERT(DATETIME,created_at ,103)
SELECT CONVERT(DATETIME,updated_at ,103)

-- 3 задание --

SELECT * FROM storehouses_products ORDER BY value;
SELECT * FROM storehouses_products
ORDER BY value DESC
LIMIT ((count(value) from storehouses_products where value is not '0')-1), 100000;

-- «Агрегация данных» --
-- 1 задание --

SELECT
  (YEAR(CURRENT_DATE)-YEAR(`birth`))-(RIGHT(CURRENT_DATE,5)<RIGHT(`birth`,5)
  ) AS `age`
FROM `users`
ORDER BY `id`;
select avg(cast(datediff(year, birth, getdate()) as float)) as avg_age,
