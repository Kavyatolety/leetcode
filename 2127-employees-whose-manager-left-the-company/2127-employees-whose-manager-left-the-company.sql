# Write your MySQL query statement below
SELECT employee_id
FROM Employees
WHERE salary < 30000 and manager_id NOT IN (select Employee_id from Employees)
ORDER BY employee_id;