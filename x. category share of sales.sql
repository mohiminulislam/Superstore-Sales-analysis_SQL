SELECT 
    category,
    ROUND(SUM(sales), 2) AS category_sales,
    ROUND(SUM(sales) / SUM(SUM(sales)) OVER() * 100, 2) AS sales_share_pct
FROM superstore_orders
GROUP BY category
ORDER BY sales_share_pct DESC;