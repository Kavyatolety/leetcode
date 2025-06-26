# Write your MySQL query statement below
WITH CTE AS (
    SELECT t.transaction_date,
        SUM(IF(amount%2=1,amount,0)) OVER (PARTITION BY transaction_date) AS odd_sum,
        SUM(IF(amount%2=0,amount,0)) OVER (PARTITION BY transaction_date) AS even_sum,
        ROW_NUMBER() OVER (PARTITION BY transaction_date) as rn
    FROM transactions t
    ORDER BY t.transaction_date
) 
SELECT
    c.transaction_date,
    c.odd_sum,
    c.even_sum
FROM cte c
WHERE c.rn = 1;
