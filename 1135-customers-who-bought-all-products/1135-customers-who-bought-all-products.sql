# Write your MySQL query statement below
SELECT c.customer_id
FROM Customer as c
JOIN Product as p
ON c.product_key = p.product_key
GROUP BY c.customer_id
HAVING COUNT(distinct c.product_key) = (SELECT count(*) FROM Product)
