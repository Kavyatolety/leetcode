# Write your MySQL query statement below
SELECT a.visited_on as visited_on, SUM(b.day_sum) as amount, ROUND(AVG(b.day_sum),2) as average_amount
FROM
    (SELECT visited_on, SUM(amount) as day_sum FROM Customer GROUP BY visited_on) a,
    (SELECT visited_on, SUM(amount) as day_sum FROM Customer GROUP BY visited_on) b
WHERE DATEDIFF(a.visited_on, b.visited_on) BETWEEN 0 and 6
GROUP BY a.visited_on
HAVING COUNT(b.visited_on) = 7;