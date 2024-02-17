# AtliQ Mart’s Retail Promotion Analysis
Welcome to the repository containing SQL scripts used to analyze the performance of promotional campaigns run by AtliQ Mart during Diwali 2023 and Sankranti 2024. This project addresses various business requests related to identifying high-value discounted products, store distribution, campaign effectiveness, and product performance in terms of incremental sales and revenue.

## Introduction

Promotional campaigns play a crucial role in the retail industry, driving sales and attracting customers during festive seasons. This project aims to analyze the performance of promotional campaigns conducted by AtliQ Mart during Diwali 2023 and Sankranti 2024. By leveraging data analytics, we seek to gain insights into the effectiveness of these campaigns and provide recommendations for optimizing future marketing strategies.

## Data Sources

The analysis is based on data obtained from AtliQ Mart's internal databases. The main datasets used include fact_events, dim_products, dim_stores, and sales_summary. These datasets contain information about product sales, store locations, promotional events, and campaign revenues.

## Project Overview

-Analyzed data from AtliQ Mart's internal databases.
*Performed SQL queries to fulfill five business requests.
+Insights are intended to inform future promotional strategies and resource allocation.

## Business Requests

- Identify high-value products featured in the 'BOGOF' (Buy One Get One Free) promotion.
* Provide an overview of the number of stores in each city.
+ Display total revenue generated before and after each promotional campaign.
- Calculate Incremental Sold Quantity (ISU%) for each category during the Diwali campaign.
* Identify the top 5 products ranked by Incremental Revenue Percentage (IR%) across all campaigns.

## Limitations and Challenges

One significant challenge was encountered during the analysis is related to the handling of promotions with the 'BOGOF' (Buy One Get One Free) promotion type. The dataset does not accurately account for the quantity of the free item provided as part of the promotion. This limitation may lead to some discrepancies or misunderstandings in the analysis, particularly when evaluating the effectiveness of 'BOGOF' promotions and comparing them with other promotion types.
Other than that one limitation of dataset was the unavailability of consumer information as it was not possible to study customers behavior regarding the promotions.

## Results and Insights

The analysis revealed several key insights:

- High-value products featured in 'BOGOF' promotions.
* Distribution of stores across different cities.
+ Total revenue generated before and after each promotional campaign.
- Incremental sold quantity and revenue percentage during the Diwali campaign.
* Top 5 products ranked by incremental revenue percentage.

These insights can help AtliQ Mart make informed decisions for future promotional activities, optimize resource allocation, and improve overall sales performance.

## Conclusion

Overall, the analysis provides valuable insights into the performance of promotional campaigns conducted by AtliQ Mart during Diwali 2023 and Sankranti 2024. By leveraging data analytics, AtliQ Mart can enhance its marketing strategies, attract more customers, and drive higher sales during festive seasons.

## Additional Insights Using PowerBi

In addition to the main business requests, the following recommended insights were explored during the analysis:

### Store Performance Analysis

- Top 10 Stores by Incremental Revenue (IR)
* Bottom 10 Stores by Incremental Sold Units (ISU)
+ City-wise Store Performance

### Promotion Type Analysis

- Top 2 Promotion Types by Incremental Revenue
* Bottom 2 Promotion Types by Incremental Sold Units
+ Comparison of Promotion Types
- Optimal Promotion Type

### Product and Category Analysis

- High-Lifting Product Categories
* Product Responsiveness to Promotions
+ Correlation between Product Category and Promotion Type Effectiveness

### Visualizations

Explore the live Power BI dashboard for interactive visualizations: [Retail Promotions Analysis Dashboard](https://www.novypro.com/project/retail-promotions-analysis)

## Future Work

Future work could include:

### Predictive Analytics 
Study predictive modeling techniques to forecast future sales based on historical data. Techniques such as time series forecasting, regression analysis, and machine learning algorithms like decision trees, random forests, and neural networks can be useful for predicting sales trends.
### Customer Segmentation
Understand how to segment customers based on their purchasing behavior, demographics, or other relevant factors. Customer segmentation can help identify high-value customers, target marketing efforts more effectively, and optimize product offerings.
### Market Basket Analysis
Learn about market basket analysis techniques to identify relationships between products frequently purchased together. Association rule mining algorithms like Apriori can help uncover valuable insights for cross-selling and product bundling strategies.
