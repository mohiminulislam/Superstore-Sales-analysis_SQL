SELECT * FROM superstore_orders AS s LIMIT 5;

WITH customer_sales AS (
    SELECT 
        customer_name,
        ROUND(SUM(sales), 2) AS total_sales,
        ROUND(SUM(profit), 2) AS total_profit
    FROM superstore_orders
    GROUP BY customer_name
)
SELECT *
FROM customer_sales
ORDER BY total_profit DESC
LIMIT 10;