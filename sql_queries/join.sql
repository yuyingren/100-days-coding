
-- Table definition of authors

+----+-----------------+
| id | name            |
+----+-----------------+
| 1  | JK Rowling      |
+----+-----------------+
| 2  | Stephen King    |
+----+-----------------+
| 3  | Agatha Christie |
+----+-----------------+
| 4  | Dr Seuss        |
+----+-----------------+


-- Table definition of books

+----+--------------------+-----------+
| id | title              | author_id |
+----+--------------------+-----------+
| 1  | It                 | 2         |
+----+--------------------+-----------+
| 2  | Chamber of Secrets | 1         |
+----+--------------------+-----------+
| 3  | Cat and the Hat    | 4         |
+----+--------------------+-----------+
| 4  | Affair at Styles   | 3         |
+----+--------------------+-----------+


SELECT title, name 
FROM books
JOIN authors ON authors.id == books.author_id

SELECT authors.id AS authorID, books.id
FROM books //AS b
JOIN authors ON authors.id = books.author_id;