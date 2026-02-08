-- Total Orders
SELECT COUNT(*) AS total_orders
FROM amazon_orders;

-- Total Sales
SELECT SUM(Amount) AS total_sales
FROM amazon_orders;

-- Total Quantity Sold
SELECT SUM(Qty) AS total_units_sold
FROM amazon_orders;
