# Write your MySQL query statement below
SELECT stock_name,
    SUM(CASE WHEN operation='Sell' THEN price 
        ELSE -price END) AS capital_gain_loss
FROM STOCKS
GROUP BY stock_name