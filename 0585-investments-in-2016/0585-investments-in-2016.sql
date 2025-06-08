# Write your MySQL query statement below
WITH cte AS (
    SELECT pid,
        tiv_2015,
        tiv_2016,
        COUNT(pid) OVER (PARTITION BY tiv_2015) AS tv_cnt,
        COUNT(pid) OVER (PARTITION BY lat,lon) AS l_cnt
    FROM Insurance
)

SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016 
FROM cte
WHERE tv_cnt > 1 and l_cnt = 1