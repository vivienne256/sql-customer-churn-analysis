# Customer Churn Analysis with SQL

SQL analysis project exploring customer churn patterns and business insights

## Project Overview

This project uses SQL to analyze customer churn patterns in a telecom customer dataset.
The goal is to identify high-risk customer segments and provide business recommendations for customer retention.

## Business Questions

Customer churn reduces recurring revenue and increases customer acquisition costs.  
This analysis aims to answer:

**Which customer segments are more likely to churn, and what business actions can reduce churn risk?**

## Dataset

This project uses the Telco Customer Churn dataset from Kaggle.
The dataset includes customer demographics, account information, subscribed services, and churn status.

## Tools

- SQL
- SQLite
- DB Browser for SQLite

## Project Structure

- `data/`: raw dataset and data dictionary
- `database/`: SQLite database file
- `queries/`: SQL queries
- `results/`: exported query results
- `notes/`: insights and recommendations

## Analysis Questions

1. What is the overall churn rate?
2. Which contract types have the highest churn rate?
3. How does churn differ by customer tenure?
4. Which payment methods are associated with higher churn?
5. Which services are linked with higher churn?
6. Which customer groups contribute the most estimated monthly revenue loss?
7. Which segments should be prioritized for retention campaigns?

## SQL Skills Demonstrated

- Data quality checks
- Aggregation with `COUNT`, `SUM`, `AVG`
- Conditional logic using `CASE WHEN`
- Grouped analysis using `GROUP BY`
- Common Table Expressions, CTEs
- Window functions
- Customer segmentation
- Revenue loss estimation

 ## Key Findings

- The overall churn rate is approximately 26.5%.
- Month-to-month customers show the highest churn rate.
- Customers with shorter tenure are more likely to churn.
- Electronic check payment users have relatively higher churn.
- Churned customers with higher monthly charges contribute more estimated revenue loss.

## Recommendations

- Offer contract upgrade incentives to month-to-month customers.
- Improve onboarding support for customers in their first 12 months.
- Monitor high monthly charge customers with targeted retention offers.
- Review payment experience for customers using electronic checks.

## Limitations

- The dataset is static and does not include time-series customer behavior.
- The analysis shows association, not causation.
- Further predictive modeling could be added using Python.

## 10. Next Steps

- Build a Power BI dashboard based on the same dataset.
- Develop a Python machine learning model to predict customer churn. This phase will work on a new dataset including time relevant features.
