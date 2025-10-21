SELECT 
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT 
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_orders
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;