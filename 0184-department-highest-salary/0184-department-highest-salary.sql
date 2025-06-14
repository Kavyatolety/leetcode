# Write your MySQL query statement below
SELECT d.name as Department, e.name as Employee, e.salary as Salary
FROM Employee e
JOIN Department d
ON d.id = e.departmentId
WHERE (e.salary, e.departmentId) IN (
    SELECT Max(salary), departmentID
    FROM Employee
    GROUP BY departmentId
)
