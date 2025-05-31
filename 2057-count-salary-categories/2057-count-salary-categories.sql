# Write your MySQL query statement below
SELECT "Low Salary" as category, sum(income<20000) AS accounts_count
FROM Accounts

UNION

SELECT "Average Salary" as category, sum(income BETWEEN 20000 AND 50000) AS accounts_count
FROM Accounts

UNION 

SELECT "High Salary" as category, sum(income>50000) AS accounts_count
FROM Accounts