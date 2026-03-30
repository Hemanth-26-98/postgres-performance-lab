INSERT INTO users (name, email)
SELECT 
    'User' || i,
    'user' || i || '@test.com'
FROM generate_series(1, 10000) i;

INSERT INTO orders (user_id, amount, status)
SELECT
    (RANDOM() * 10000)::INT,
    (RANDOM() * 1000)::DECIMAL,
    CASE 
        WHEN RANDOM() < 0.5 THEN 'completed'
        ELSE 'pending'
    END
FROM generate_series(1, 50000);
