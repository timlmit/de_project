CREATE SCHEMA IF NOT EXISTS training;
CREATE TABLE IF NOT EXISTS training.setup_check (
 id INTEGER PRIMARY KEY,
 amount NUMERIC(10, 2) NOT NULL
);
INSERT INTO training.setup_check (id, amount)
VALUES
 (1, 100.00),
 (2, 50.00)
ON CONFLICT (id)
DO UPDATE SET amount = EXCLUDED.amount;
SELECT
 COUNT(*) AS row_count,
 SUM(amount) AS total_amount
FROM training.setup_check;