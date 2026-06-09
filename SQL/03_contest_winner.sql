-- Find the user whose photo received the highest number of likes

SELECT
    u.id,
    u.username,
    p.id AS photo_id,
    COUNT(l.photo_id) AS total_likes
FROM photos p
JOIN users u
    ON p.user_id = u.id
JOIN likes l
    ON p.id = l.photo_id
GROUP BY p.id, u.id, u.username
ORDER BY total_likes DESC
LIMIT 1;
