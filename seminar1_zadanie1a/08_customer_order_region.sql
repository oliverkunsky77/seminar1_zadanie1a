SELECT c.customer_name, COUNT(o.order_id) AS order_count FROM customers c FULL JOIN orders o ON c.customer_id = o.customer_id GROUP BY customer_name;
