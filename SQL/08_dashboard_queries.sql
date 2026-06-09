-- User Registrations by Weekday

SELECT
    DAYNAME(created_at) AS registration_day,
    COUNT(*) AS total_users
FROM users
GROUP BY DAYNAME(created_at);

-- Top Hashtags

SELECT
    t.tag_name,
    COUNT(pt.tag_id) AS usage_count
FROM tags t
JOIN photo_tags pt
    ON t.id = pt.tag_id
GROUP BY t.id, t.tag_name
ORDER BY usage_count DESC
LIMIT 5;

-- User Posting Activity

SELECT
    u.username,
    COUNT(p.id) AS total_posts
FROM users u
LEFT JOIN photos p
    ON u.id = p.user_id
GROUP BY u.username;

-- Top Performing Photos

SELECT
    p.id AS photo_id,
    u.username,
    COUNT(l.photo_id) AS likes
FROM photos p
JOIN users u
    ON p.user_id = u.id
JOIN likes l
    ON p.id = l.photo_id
GROUP BY p.id, u.username
ORDER BY likes DESC
LIMIT 10;
