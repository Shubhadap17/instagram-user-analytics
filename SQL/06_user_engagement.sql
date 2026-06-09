-- Calculate average posts per user

SELECT
    (SELECT COUNT(*) FROM photos) AS total_photos,
    (SELECT COUNT(*) FROM users) AS total_users,
    ROUND(
        (SELECT COUNT(*) FROM photos) /
        (SELECT COUNT(*) FROM users),
        2
    ) AS avg_posts_per_user;
