-- Identify the 5 oldest users on Instagram

SELECT
    id,
    username,
    created_at
FROM users
ORDER BY created_at ASC
LIMIT 5;
