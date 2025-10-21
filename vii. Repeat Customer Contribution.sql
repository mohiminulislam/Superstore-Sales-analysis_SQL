WITH customer_orders AS (
    SELECT 
        customer_id,
        COUNT(DISTINCT order_id) AS total_orders,
        SUM(sales) AS total_sales
    FROM superstore_orders
    GROUP BY customer_id
)
SELECT 
    COUNT(*) FILTER (WHERE total_orders > 1) AS repeat_customers,
    COUNT(*) AS total_customers,
    ROUND(SUM(total_sales) FILTER (WHERE total_orders > 1) /
          SUM(total_sales) * 100, 2) AS repeat_customer_sales_pct
FROM customer_orders;