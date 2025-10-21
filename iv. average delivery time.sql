SELECT 
    ship_mode,
    ROUND(AVG(ship_date - order_date), 2) AS avg_delivery_days
FROM superstore_orders
GROUP BY ship_mode
ORDER BY avg_delivery_days;

