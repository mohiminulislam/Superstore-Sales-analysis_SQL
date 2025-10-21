SELECT COUNT(*) FROM superstore_orders;

SELECT MIN(order_date), MAX(order_date)
FROM superstore_orders;

SELECT state, ROUND(SUM(sales), 2) AS total_sales
FROM superstore_orders
GROUP BY state
ORDER BY total_sales DESC
LIMIT 5;

SELECT category, ROUND(SUM(profit), 2) AS total_profit
FROM superstore_orders
GROUP BY category
ORDER BY total_profit DESC;

SELECT COUNT(*) FILTER (WHERE profit IS NULL) AS missing_profit,
       COUNT(*) FILTER (WHERE sales IS NULL) AS missing_sales
FROM superstore_orders;