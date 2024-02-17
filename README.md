AtliQ Mart’s Diwali & Sankranti Promotions Analysis

Welcome to the repository containing SQL scripts used to analyze the performance of promotional campaigns run by AtliQ Mart during Diwali 2023 and Sankranti 2024. This project addresses various business requests related to identifying high-value discounted products, store distribution, campaign effectiveness, and product performance in terms of incremental sales and revenue.
Introduction

Promotional campaigns play a crucial role in the retail industry, driving sales and attracting customers during festive seasons. This project aims to analyze the performance of promotional campaigns conducted by AtliQ Mart during Diwali 2023 and Sankranti 2024. By leveraging data analytics, we seek to gain insights into the effectiveness of these campaigns and provide recommendations for optimizing future marketing strategies.
Data Sources

The analysis is based on data obtained from AtliQ Mart's internal databases. The main datasets used include fact_events, dim_products, dim_stores, and sales_summary. These datasets contain information about product sales, store locations, promotional events, and campaign revenues.
Project Overview

    Analyzed data from AtliQ Mart's internal databases.
    Performed SQL queries to fulfill five business requests.
    Insights are intended to inform future promotional strategies and resource allocation.

Business Requests

    High-Value Products in 'BOGOF' Promotion

    Objective: Identify high-value products featured in the 'BOGOF' (Buy One Get One Free) promotion.

    sql

SELECT * 
FROM fact_events 
WHERE base_price > 500 
AND promo_type = 'BOGOF';

Store Presence Overview

Objective: Provide an overview of the number of stores in each city.

sql

SELECT city, COUNT(*) AS store_count
FROM dim_stores
GROUP BY city
ORDER BY store_count DESC;

Promotional Campaign Revenue Analysis

Objective: Display total revenue generated before and after each promotional campaign.

sql

-- SQL script for promotional campaign revenue analysis

Incremental Sold Quantity Analysis during Diwali Campaign

Objective: Calculate Incremental Sold Quantity (ISU%) for each category during the Diwali campaign.

sql

-- SQL script for incremental sold quantity analysis during Diwali campaign

Top 5 Products by Incremental Revenue Percentage

Objective: Identify the top 5 products ranked by Incremental Revenue Percentage (IR%) across all campaigns.

sql

    -- SQL script for top 5 products by incremental revenue percentage

Limitations and Challenges

One significant limitation encountered during the analysis is related to the handling of promotions with the 'BOGOF' (Buy One Get One Free) promotion type. The dataset does not accurately account for the quantity of the free item provided as part of the promotion. This limitation may lead to some discrepancies or misunderstandings in the analysis, particularly when evaluating the effectiveness of 'BOGOF' promotions and comparing them with other promotion types.
Results and Insights

The analysis revealed several key insights:

    High-value products featured in 'BOGOF' promotions.
    Distribution of stores across different cities.
    Total revenue generated before and after each promotional campaign.
    Incremental sold quantity and revenue percentage during the Diwali campaign.
    Top 5 products ranked by incremental revenue percentage.

These insights can help AtliQ Mart make informed decisions for future promotional activities, optimize resource allocation, and improve overall sales performance.
Conclusion

Overall, the analysis provides valuable insights into the performance of promotional campaigns conducted by AtliQ Mart during Diwali 2023 and Sankranti 2024. By leveraging data analytics, AtliQ Mart can enhance its marketing strategies, attract more customers, and drive higher sales during festive seasons.
Additional Insights

In addition to the main business requests, the following recommended insights were explored during the analysis:
Store Performance Analysis

    Top 10 Stores by Incremental Revenue (IR)
    Bottom 10 Stores by Incremental Sold Units (ISU)
    City-wise Store Performance

Promotion Type Analysis

    Top 2 Promotion Types by Incremental Revenue
    Bottom 2 Promotion Types by Incremental Sold Units
    Comparison of Promotion Types
    Optimal Promotion Type

Product and Category Analysis

    High-Lifting Product Categories
    Product Responsiveness to Promotions
    Correlation between Product Category and Promotion Type Effectiveness

Visualizations

Explore the live Power BI dashboard for interactive visualizations: Retail Promotions Analysis Dashboard
Future Work

Future work could include:

    Exploring additional datasets to gain deeper insights into customer behavior and preferences.
    Conducting more granular analysis on specific product categories or regions.
    Implementing machine learning models for predictive analytics to forecast sales and optimize promotional strategies.
