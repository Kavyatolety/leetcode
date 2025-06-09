# Write your MySQL query statement below
WITH CTE AS (
    SELECT d.id, d.name as Department, salary as Salary, e.name as Employee, DENSE_RANK() OVER (PARTITION BY d.id ORDER BY salary DESC) as dnk_rank
    FROM Department d
    JOIN Employee e
    ON e.departmentId = d.id
) 
SELECT Department, Employee, Salary
FROM CTE
Where dnk_rank <= 3