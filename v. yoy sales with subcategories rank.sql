SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_orders
GROUP BY year
ORDER BY year;

SELECT 
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    RANK() OVER (PARTITION BY category ORDER BY SUM(sales) DESC) AS sales_rank
FROM superstore_orders
GROUP BY category, sub_category
ORDER BY category, sales_rank;