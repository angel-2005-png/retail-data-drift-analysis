
--Retail Sales SQL Analysis


--Total Revenue
SELECT 
    SUM(Quantity * UnitPrice) AS total_revenue
FROM retail_data;


-- 2️onthly Revenue Trend
SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS month,
    SUM(Quantity * UnitPrice) AS monthly_revenue
FROM retail_data
GROUP BY month
ORDER BY month;


-- Revenue by Country
SELECT 
    Country,
    SUM(Quantity * UnitPrice) AS country_revenue
FROM retail_data
GROUP BY Country
ORDER BY country_revenue DESC;


-- Top 10 Customers by Revenue
SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS customer_revenue
FROM retail_data
GROUP BY CustomerID
ORDER BY customer_revenue DESC
LIMIT 10;


-- Average Order Value
SELECT 
    InvoiceNo,
    SUM(Quantity * UnitPrice) AS order_value
FROM retail_data
GROUP BY InvoiceNo;


-- High-Value Orders (Top 25% threshold logic)
SELECT *
FROM retail_data
WHERE (Quantity * UnitPrice) > (
    SELECT 
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Quantity * UnitPrice)
    FROM retail_data
);
