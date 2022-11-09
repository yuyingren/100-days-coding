
-- select using greatest

SELECT name, weight, GREATEST(30, 2 * weight)
FROM products;


-- select using least 

SELECT name, price, LEAST(price * 0.5, 400)
FROM products;


-- select products, their price and give a case on the price

SELECT
name,
price,
CASE
WHEN price > 600 THEN 'high'
WHEN price > 300 THEN 'medium'
ELSE 'cheap'
END
FROM products;