

-- Table of authors
+----+-----------------+
| id | name            |
+----+-----------------+
| 1  | Stephen King    |
+----+-----------------+
| 2  | Agatha Christie |
+----+-----------------+
| 3  | JK Rowling      |
+----+-----------------+

-- Table of books

+----+---------------------+-----------+
| id | title               | author_id |
+----+---------------------+-----------+
| 1  | The Dark Tower      | 1         |
+----+---------------------+-----------+
| 2  | Affair At Styles    | 2         |
+----+---------------------+-----------+
| 3  | Chamber of Secrets  | 3         |
+----+---------------------+-----------+

-- Table of reviews

+----+--------+-------------+---------+
| id | rating | reviewer_id | book_id |
+----+--------+-------------+---------+
| 1  | 3      | 1           | 2       |
+----+--------+-------------+---------+
| 2  | 4      | 2           | 1       |
+----+--------+-------------+---------+
| 3  | 5      | 3           | 3       |
+----+--------+-------------+---------+


SELECT title, name, rating
FROM books
JOIN authors ON authors.id = books.author_id
JOIN reviews ON reviews.reviewer_id = authors.id AND reviews.book_id = books.id;

