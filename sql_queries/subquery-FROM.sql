

-- subquery in FROM can return a single values or a set of rows



SELECT *
FROM (SELECT MAX(price) FROM products) AS p;

-- subquery in FROM always needs an ALIAS

SELECT AVG(order_count)
FROM(
SELECT user_id, COUNT(*) AS order_count
FROM orders
GROUP BY user_id
) AS p


+-------------+--------------+-------+------------+
| name        | manufacturer | price | units_sold |
+-------------+--------------+-------+------------+
| N1280       | Nokia        | 199   | 1925       |
+-------------+--------------+-------+------------+
| Iphone 4    | Apple        | 399   | 9436       |
+-------------+--------------+-------+------------+
| Galaxy S    | Samsung      | 299   | 2359       |
+-------------+--------------+-------+------------+
| S5620 Monte | Samsung      | 250   | 2385       |
+-------------+--------------+-------+------------+
| N8          | Nokia        | 150   | 7543       |
+-------------+--------------+-------+------------+
| Droid       | Motorola     | 150   | 8395       |
+-------------+--------------+-------+------------+
| Wave S8500  | Samsung      | 175   | 9259       |
+-------------+--------------+-------+------------+

-- select the highest average price among different manufacturers.

SELECT MAX(avg_price) AS max_average_price
FROM
(SELECT AVG(price) AS avg_price
FROM phones
GROUP BY manufacturer) AS avg