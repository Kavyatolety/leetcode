# Write your MySQL query statement below
SELECT
    user_id,
    ROUND(AVG(case when activity_type='free_trial' then activity_duration END),2) as trial_avg_duration,
    ROUND(AVG(case when activity_type='paid' then activity_duration END),2) as paid_avg_duration
FROM UserActivity
GROUP BY user_id
HAVING SUM(IF(activity_type='paid',1,0)) >= 1
ORDER BY user_id;
