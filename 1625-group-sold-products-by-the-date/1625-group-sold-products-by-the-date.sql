# Write your MySQL query statement below
SELECT sell_date, COUNT(distinct product) as num_sold, GROUP_CONCAT(distinct product order by product) as products
FROM Activities
GROUP BY sell_date;
