WITH pre_promo_revenue AS (
    SELECT c.campaign_name,
           ROUND(SUM(base_price * fe.quantity_sold_before_promo) / 1000000, 2) AS total_revenue_before_promo
    FROM fact_events AS fe
    LEFT JOIN dim_campaigns AS c ON fe.campaign_id = c.campaign_id
    GROUP BY c.campaign_name
),
post_promo_revenue AS (
    SELECT c.campaign_name,
           SUM(
               CASE 
                   WHEN promo_type = '50% OFF' THEN base_price * 0.5 * fe.quantity_sold_after_promo
                   WHEN promo_type = '33% OFF' THEN base_price * 0.67 * fe.quantity_sold_after_promo
                   WHEN promo_type = '25% OFF' THEN base_price * 0.75 * fe.quantity_sold_after_promo
                   WHEN promo_type = 'BOGOF' THEN base_price * fe.quantity_sold_after_promo
                   WHEN promo_type = '500 Cashback' THEN (base_price - 500) * fe.quantity_sold_after_promo
                   ELSE base_price * fe.quantity_sold_after_promo
               END
           ) / 1000000 AS total_revenue_after_promo
    FROM fact_events AS fe
    LEFT JOIN dim_campaigns AS c ON fe.campaign_id = c.campaign_id
    GROUP BY c.campaign_name
)
SELECT pre.campaign_name,
       pre.total_revenue_before_promo,
       COALESCE(post.total_revenue_after_promo, 0) AS total_revenue_after_promo
FROM pre_promo_revenue AS pre
LEFT JOIN post_promo_revenue AS post ON pre.campaign_name = post.campaign_name;
