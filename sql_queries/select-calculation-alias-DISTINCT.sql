SELECT name, price * units_sold AS revenue
FROM phones;

SELECT COUNT(DISTINCT manufacturer)
FROM phones;