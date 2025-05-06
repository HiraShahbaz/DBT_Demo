{{ config(
    materialized='table'
) }}
with source_data as (
SELECT
    CustomerID,
    COUNT(*) AS order_count,
    SUM(Amount) AS total_spent,
    MIN(OrderDate) AS first_order_date,
    MAX(OrderDate) AS last_order_date
FROM SalesDB.Orders
GROUP BY CustomerID
)

select * from source_data