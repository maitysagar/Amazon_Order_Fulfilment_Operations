-- Total Sales by Status-- 
SELECT 
  Status,
  SUM(Amount) AS total_sales
FROM amazon_orders
GROUP BY Status
ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT 
  DATE_FORMAT(STR_TO_DATE(Date, '%m-%d-%y'), '%Y-%m') AS month,
  SUM(Amount) AS monthly_sales
FROM amazon_orders
GROUP BY month
ORDER BY month;

-- Average Order Value (AOV)
SELECT 
  ROUND(SUM(Amount) / COUNT(*), 2) AS avg_order_value
FROM amazon_orders;

-- High-Value Orders

SELECT *
FROM amazon_orders
WHERE Amount > 5000
ORDER BY Amount DESC;
