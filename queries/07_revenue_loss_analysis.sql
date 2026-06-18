-- 07_revenue_loss_analysis
-- Objective: To demonstrate business impact.
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END),
        2
    ) AS estimated_monthly_revenue_lost
FROM telco_customers
GROUP BY Contract
ORDER BY estimated_monthly_revenue_lost DESC;
