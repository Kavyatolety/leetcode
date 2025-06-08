# Write your MySQL query statement below
SELECT DISTINCT p.product_name as product_name, SUM(o.unit) as unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id 
WHERE o.order_date LIKE "2020-02-%" 
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100