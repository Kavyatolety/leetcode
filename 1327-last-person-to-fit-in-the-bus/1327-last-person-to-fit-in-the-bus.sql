# Write your MySQL query statement below
SELECT person_name
FROM (
    SELECT person_name, turn, weight,
    SUM(weight) OVER (ORDER BY turn) AS total_weight FROM Queue
) AS subquery WHERE total_weight <= 1000
ORDER BY turn desc
LIMIT 1
