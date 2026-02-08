-- Orders by Fulfilment Type
SELECT 
  Fulfilment,
  COUNT(*) AS order_count,
  SUM(Amount) AS revenue
FROM amazon_orders
GROUP BY Fulfilment;

-- Courier Status Breakdown
SELECT 
  Courier_Status,
  COUNT(*) AS orders
FROM amazon_orders
GROUP BY Courier_Status;

-- Location Analysis
-- Top 10 States by Sales

SELECT 
  ship_state,
  SUM(Amount) AS total_sales
FROM amazon_orders
GROUP BY ship_state
ORDER BY total_sales DESC
LIMIT 10;

-- City-Level Orders
SELECT 
  ship_city,
  COUNT(*) AS orders
FROM amazon_orders
GROUP BY ship_city
ORDER BY orders DESC
LIMIT 10;

-- =====================================
-- 6. Product & Category Insights
-- =====================================

-- Sales by category
SELECT 
    Category,
    COUNT(*) AS orders,
    SUM(Amount) AS revenue
FROM amazon_orders
GROUP BY Category
ORDER BY revenue DESC;

-- Quantity sold by size
SELECT 
    Size,
    SUM(Qty) AS total_quantity
FROM amazon_orders
GROUP BY Size
ORDER BY total_quantity DESC;


-- 7. B2B vs B2C Analysis
-- =====================================

SELECT 
    B2B,
    COUNT(*) AS orders,
    SUM(Amount) AS revenue
FROM amazon_orders
GROUP BY B2B;

