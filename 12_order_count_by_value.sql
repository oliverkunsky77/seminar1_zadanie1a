SELECT 
    c.region, 
    COUNT(CASE WHEN o.sales > 1000 THEN o.order_id END) AS high_value, 
    COUNT(CASE WHEN o.sales <= 1000 THEN o.order_id END) AS low_value 
FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id 
GROUP BY c.region;