

-- select the first two photos that have more than 2 comments 

SELECT photo_id, COUNT(*)

FROM comments

WHERE photo_id < 3

GROUP BY photo_id

HAVING COUNT(*) > 2;


-- select users commented more that 20 comments on the first 50 photos

SELECT user_id, COUNT(*)

FROM comments

WHERE photo_id < 50

GROUP BY user_id

HAVING COUNT(*) > 20;