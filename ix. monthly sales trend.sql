SELECT 
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(SUM(sales)) OVER (ORDER BY DATE_TRUNC('month', order_date)), 2) AS cumulative_sales
FROM superstore_orders
GROUP BY month
ORDER BY month;