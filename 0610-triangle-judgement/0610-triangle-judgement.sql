# Write your MySQL query statement below
SELECT x,y,z,
CASE WHEN x + y > z
and y + z > x
and x + z > y then "Yes" else "No"
end as Triangle
FROM Triangle