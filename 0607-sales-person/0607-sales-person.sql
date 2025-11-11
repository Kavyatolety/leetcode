# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT s.name as name
FROM Salesperson s
WHERE s.name NOT IN (
    SELECT s.name as name
    FROM Salesperson as s
    LEFT JOIN Orders o
    ON s.sales_id = o.sales_id
    LEFT JOIN Company c
    ON o.com_id = c.com_id
    WHERE c.name = 'RED'
)