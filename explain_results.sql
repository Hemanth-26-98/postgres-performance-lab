-- BEFORE INDEX
EXPLAIN ANALYZE
SELECT u.name, o.amount
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE o.status = 'completed';

-- AFTER INDEX
CREATE INDEX idx_orders_status ON orders(status);
CREATE INDEX idx_orders_user_id ON orders(user_id);

EXPLAIN ANALYZE
SELECT u.name, o.amount
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE o.status = 'completed';
