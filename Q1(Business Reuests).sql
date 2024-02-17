SELECT * 
FROM fact_events 
WHERE base_price > 500 
AND promo_type = 'BOGOF';