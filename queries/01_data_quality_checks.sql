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

-- Check missing or blank TotalCharges
SELECT
    COUNT(*) AS blank_total_charges
FROM telco_customers
WHERE TotalCharges IS NULL
   OR TRIM(TotalCharges) = '';
