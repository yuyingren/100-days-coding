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


-- Write query here to update the 'units_sold' of the phone with name 'N8' to 8543
UPDATE phones SET units_sold = 8543
WHERE name =='N8';


-- Write query here to select all rows and columns of the 'phones' table

SELECT * FROM phones


-- Write your delete SQL here
DELETE FROM phones WHERE manufacturer = 'Samsung';

-- Write query here to select all rows and columns from phones
SELECT * FROM phones;