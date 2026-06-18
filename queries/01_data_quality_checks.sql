-- 01_data_quality_checks.sql
-- Basic data quality checks for the Telco Customer Churn dataset.

-- Preview the first 10 rows
SELECT *
FROM telco_customers
LIMIT 10;

-- Check total rows and unique customer IDs
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT customerID) AS unique_customers
FROM telco_customers;


-- Check churn distribution
SELECT
    Churn,
    COUNT(*) AS customer_count
FROM telco_customers
GROUP BY Churn;

-- Calculate overall churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_pct
FROM telco_customers;
