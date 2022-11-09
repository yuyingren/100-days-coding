

-- The result should look something like this. (Only one row is shown, there should be one row for 
--each phone)

+-------+-------+-------------+
| name  | price | price_ratio |
+-------+-------+-------------+
| N1280 | 199   | .498        |
+-------+-------+-------------+


-- For reference, here is the phones table:

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

-- subquery in SELECT: should return a single value

-- select name of the phone, their price and their price ratio to the most expensive phone

SELECT name, price,
 price / (SELECT max(price) FROM phones
) AS price_ratio
FROM phones;

-- select from single value

SELECT 
(SELECT MAX(price) FROM phones) AS max_price,
 (SELECT MIN(price) FROM phones) AS min_price,
 (SELECT AVG(price) FROM phones) AS avg_price;