
-- select photos and comments and user names that posted by same user

SELECT url, contents, username
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON user.id = comments.user_id AND user.id = photos.user_id

