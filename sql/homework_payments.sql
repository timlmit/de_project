CREATE SCHEMA IF NOT EXISTS training;

CREATE TABLE IF NOT EXISTS training.homework_payments (
 id INTEGER PRIMARY KEY,
 amount NUMERIC(10, 2) NOT NULL
);

INSERT INTO training.homework_payments (id, amount)
VALUES
 (1, 120.00),
 (2, 80.00),
 (3, 50.00)
ON CONFLICT (id) DO NOTHING;

SELECT id, amount
FROM training.homework_payments
ORDER BY id;

SELECT
 COUNT(*) AS row_count,
 SUM(amount) AS total_amount
FROM training.homework_payments;
