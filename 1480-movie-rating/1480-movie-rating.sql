# Write your MySQL query statement below
(
SELECT u.name as results
FROM Users as u
JOIN MovieRating as mr
ON u.user_id = mr.user_id
GROUP BY u.user_id
ORDER BY COUNT(mr.rating) DESC, u.name ASC
LIMIT 1
)
UNION ALL
(
SELECT m.title as results
FROM Movies as m
JOIN MovieRating as mr1
ON m.movie_id = mr1.movie_id
WHERE mr1.created_at LIKE '2020-02%'
GROUP BY m.movie_id
ORDER BY AVG(mr1.rating) DESC, m.title ASC
LIMIT 1
);


