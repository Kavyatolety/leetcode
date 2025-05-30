# Write your MySQL query statement below
SELECT m.employee_id, m.name, COUNT(e.employee_id) as reports_count, ROUND(AVG(e.age)) as average_age
FROM Employees e
JOIN Employees m
ON e.reports_to = m.employee_id
GROUP BY m.employee_id
ORDER BY m.employee_id;
