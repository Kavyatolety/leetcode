# Write your MySQL query statement below
SELECT s.name
FROM SalesPerson as s
WHERE s.name NOT IN 
    (SELECT s.name as name
    FROM SalesPerson as s
        LEFT join Orders as o ON s.sales_id = o.sales_id 
        LEFT join company as c ON  o.com_id = c.com_id
    WHERE c.name = 'RED')
