

-- subquery in WHERE returns a single value use MATH operator >

SELECT name 
FROM products
WHERE price > (

SELECT AVG(price) FROM products
);

-- subquery in WHERE returns a single column use IN operator

SELECT id
FROM orders
WHERE product_id IN (

SELECT id FROM products WHERE price / weight > 50

);

-- subquery in WHERE returns a single column use NOT IN operator

SELECT name, department
FROM products
WHERE department NOT IN (

SELECT department FROM products WHERE price < 100

);

-- new operator: > ALL

SELECT name, department, price
FROM products
WHERE price >ALL(
SELECT price FROM products WHERE department = 'Industrial'
);

-- above is equal to:

SELECT name, department, price
FROM products
WHERE price > (
SELECT MAX(price) FROM products WHERE department = 'Industrial'
);


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


-- select phones and their prices which price are higher than S5620

SELECT name, price
FROM phones
WHERE price > (SELECT price
FROM phones
WHERE name = "S5620 Monte");


SELECT name 
FROM phones 
WHERE price > ALL(SELECT price 
FROM phones 
WHERE manufacturer =="Samsung");