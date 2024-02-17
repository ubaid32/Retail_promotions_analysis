SELECT 
    d.category,
    SUM(f.quantity_sold_before_promo) AS quantity_sold_before_promo,
    SUM(f.quantity_sold_after_promo) AS quantity_sold_after_promo,
    ((SUM(f.quantity_sold_after_promo) - SUM(f.quantity_sold_before_promo)) / SUM(f.quantity_sold_before_promo)) * 100 AS isu_percentage,
    DENSE_RANK() OVER (ORDER BY ((SUM(f.quantity_sold_after_promo) - SUM(f.quantity_sold_before_promo)) / SUM(f.quantity_sold_before_promo)) DESC) AS rank_order
FROM 
    fact_events f
JOIN 
    dim_products d ON f.product_code = d.product_code
JOIN 
    dim_campaigns c ON f.campaign_id = c.campaign_id
WHERE 
    c.campaign_name = 'Diwali'
GROUP BY 
    d.category
ORDER BY 
    isu_percentage DESC;
