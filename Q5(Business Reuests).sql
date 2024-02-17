SELECT 
    p.product_name,
    p.category,
    (SUM(fe.quantity_sold_after_promo * fe.base_price) - SUM(fe.quantity_sold_before_promo * fe.base_price)) / SUM(fe.quantity_sold_before_promo * fe.base_price) * 100 AS ir_percentage
FROM 
    fact_events fe
JOIN 
    dim_products p ON fe.product_code = p.product_code
GROUP BY 
    p.product_name, 
    p.category
ORDER BY 
    ir_percentage DESC
LIMIT 5;
