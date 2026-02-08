-- STEP 1: Delete database if it already exists (clean start)
DROP DATABASE IF EXISTS amazon_orders_db;

-- STEP 2: Create fresh database
CREATE DATABASE amazon_orders_db;

-- STEP 3: Use the database
USE amazon_orders_db;

-- STEP 4: Create table
-- Column names EXACTLY match your Excel headers
-- Date kept as VARCHAR to avoid import errors (MM-DD-YY)

CREATE TABLE amazon_orders (
    `Date` VARCHAR(20),
    `Status` VARCHAR(50),
    `Fulfilment` VARCHAR(50),
    `Sales Channel` VARCHAR(50),
    `ship-service-level` VARCHAR(50),
    `Category` VARCHAR(100),
    `Size` VARCHAR(20),
    `Courier Status` VARCHAR(50),
    `Qty` INT,
    `currency` VARCHAR(10),
    `Amount` DECIMAL(10,2),
    `ship-city` VARCHAR(100),
    `ship-state` VARCHAR(100),
    `ship-postal-code` VARCHAR(20),
    `ship-country` VARCHAR(50),
    `B2B` VARCHAR(10),
    `fulfilled-by` VARCHAR(50)
);

-- STEP 5: Verify table
SHOW TABLES;
DESCRIBE amazon_orders;
