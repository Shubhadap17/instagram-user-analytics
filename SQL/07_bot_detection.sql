-- Identify users who liked every photo on the platform

SELECT
    u.id,
    u.username,
    COUNT(l.photo_id) AS total_likes
FROM users u
JOIN likes l
    ON u.id = l.user_id
GROUP BY u.id, u.username
HAVING COUNT(l.photo_id) = (
    SELECT COUNT(*)
    FROM photos
);
