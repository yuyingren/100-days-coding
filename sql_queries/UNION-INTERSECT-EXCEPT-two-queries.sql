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


-- parenthes are optional
-- columns selected should be the same data type

-- UNION, UNION ALL, join two queries, remove duplicate or not.

-- INTERSECT, INTERSECT ALL, find rows in common in the two queries.

-- EXCEPT, EXCEPT ALL, find rows present in the first query but not in the second.

(
SELECT manufacturer
FROM phones
WHERE price < 170
)

UNION

(
SELECT manufacturer, COUNT(*)
FROM phones
GROUP BY manufacturer
HAVING COUNT(*) >2
);