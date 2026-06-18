-- 08_customer_risk_segments.sql

-- Objective: Perform risk ranking using the CTE window function.
WITH segment_churn AS (
    SELECT
        Contract,
        PaymentMethod,
        COUNT(*) AS total_customers,
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
        ROUND(
            100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
            2
        ) AS churn_rate_pct
    FROM telco_customers
    GROUP BY Contract, PaymentMethod
)

SELECT
    Contract,
    PaymentMethod,
    total_customers,
    churned_customers,
    churn_rate_pct,
    RANK() OVER (ORDER BY churn_rate_pct DESC) AS risk_rank
FROM segment_churn
WHERE total_customers >= 50
ORDER BY risk_rank;
