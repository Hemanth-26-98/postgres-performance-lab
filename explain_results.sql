EXPLAIN ANALYZE
SELECT u.name, o.amount
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE o.status = 'completed';
