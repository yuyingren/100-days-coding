


-- An example of the authors table

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

-- An example of the books table

+----+---------------------+-----------+
| id | title               | author_id |
+----+---------------------+-----------+
| 1  | Chamber of Secrets  | 1         |
+----+---------------------+-----------+
| 2  | Prisoner of Azkaban | 1         |
+----+---------------------+-----------+
| 3  | The Dark Tower      | 2         |
+----+---------------------+-----------+
| 4  | Murder At the Links | 3         |
+----+---------------------+-----------+
| 5  | Affair at Styles    | 3         |
+----+---------------------+-----------+
| 6  | Cat in the Hat      | 4         |
+----+---------------------+-----------+

-- You can only select grouped column, can't select title for example.

-- Aggregations: COUNT(), SUM(), AVG(), MIN(), MAX()

SELECT author_id, COUNT(*) AS num_books_author
FROM books
GROUP BY author_id;
