SELECT 
    ROUND(CORR(discount, profit)::NUMERIC, 3) AS discount_profit_corr
FROM superstore_orders;

SELECT 
    category,
    product_name,
    SUM(profit) AS total_profit,
    RANK() OVER (PARTITION BY category ORDER BY SUM(profit) DESC) AS profit_rank,
    PERCENT_RANK() OVER (PARTITION BY category ORDER BY SUM(profit)) AS profit_percentile
FROM superstore_orders
GROUP BY category, product_name
ORDER BY category, total_profit DESC;