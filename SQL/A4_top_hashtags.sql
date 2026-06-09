-- Identify the top 5 most used hashtags

SELECT
    t.tag_name,
    COUNT(pt.tag_id) AS usage_count
FROM tags t
JOIN photo_tags pt
    ON t.id = pt.tag_id
GROUP BY t.id, t.tag_name
ORDER BY usage_count DESC
LIMIT 5;
