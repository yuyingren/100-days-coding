

-- correlated queries work like double for loop. 
Iterate another query while iterating over each row of the out query.



-- select the most expensive product's name, department, price in each department.

SELECT name, department, price

FROM products AS p1 

WHERE p1.price = (

SELECT MAX(price)
FROM products AS p2
WHERE p1.department = p2.department

);

-- select the number of orders for each product

SELECT p.name,
(
SELECT COUNT(*)
FORM orders AS o
WHERE o.product_id = p.id
) AS num_orders

FROM products AS p
