USE amazon_orders_db;

-- =====================================
-- 1. Revenue Contribution by Order Status
-- =====================================

SELECT
    Status,
    COUNT(*) AS orders,
    SUM(Amount) AS revenue,
    ROUND(
        SUM(Amount) / (SELECT SUM(Amount) FROM amazon_orders) * 100,
        2
    ) AS revenue_percentage
FROM amazon_orders
GROUP BY Status
ORDER BY revenue DESC;


-- =====================================
-- 2. Fulfilment Efficiency Insight
-- =====================================

SELECT
    Fulfilment,
    COUNT(*) AS total_orders,
    SUM(Amount) AS total_revenue,
    ROUND(AVG(Amount), 2) AS avg_order_value
FROM amazon_orders
GROUP BY Fulfilment
ORDER BY total_revenue DESC;


-- =====================================
-- 3. Courier / Delivery Risk Insight
-- =====================================

SELECT
    `Courier Status`,
    COUNT(*) AS orders
FROM amazon_orders
GROUP BY `Courier Status`
ORDER BY orders DESC;


-- =====================================
-- 4. B2B vs B2C Customer Value Insight
-- =====================================

SELECT
    B2B,
    COUNT(*) AS orders,
    SUM(Amount) AS revenue,
    ROUND(AVG(Amount), 2) AS avg_order_value
FROM amazon_orders
GROUP BY B2B;


-- =====================================
-- 5. Geographic Revenue Concentration
-- =====================================

SELECT
    `ship-state`,
    SUM(Amount) AS revenue
FROM amazon_orders
GROUP BY `ship-state`
ORDER BY revenue DESC
LIMIT 5;


-- =====================================
-- 6. Product Demand & Revenue Insight
-- =====================================

SELECT
    Category,
    SUM(Qty) AS total_units_sold,
    SUM(Amount) AS revenue
FROM amazon_orders
GROUP BY Category
ORDER BY revenue DESC;


-- =====================================
-- 7. Monthly Revenue Trend (Seasonality)
-- Date format handled: MM-DD-YY
-- =====================================

SELECT
    DATE_FORMAT(STR_TO_DATE(Date, '%m-%d-%y'), '%Y-%m') AS month,
    SUM(Amount) AS revenue
FROM amazon_orders
GROUP BY month
ORDER BY month;
