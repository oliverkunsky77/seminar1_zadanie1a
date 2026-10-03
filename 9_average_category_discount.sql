SELECT 
    p.sub_category, 
    AVG(o.discount) AS average_discount 
FROM products p 
INNER JOIN orders o ON p.product_id = o.product_id 
GROUP BY p.sub_category;