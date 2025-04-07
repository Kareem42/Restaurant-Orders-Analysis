
-- This SQL script explores the order_details table to understand the data and perform various analyses.

-- View of the order_details table.
SELECT 
    *
FROM
    order_details;
    
-- Date range of the order_details table
SELECT 
    *
FROM
    order_details
ORDER BY order_date;

SELECT 
    MIN(order_date), MAX(order_date)
FROM
    order_details;

-- Viewing how many order were made within this date range
SELECT 
    COUNT(distinct order_id)
FROM
    order_details;

-- Viewing the number of items that were ordered in this date range
SELECT 
    COUNT(*)
FROM
    order_details;
    
-- Viewing the number of items who had the most orders in this date range.
SELECT 
    order_id, COUNT(item_id) AS num_items
FROM
    order_details
GROUP BY order_id
order by num_items desc;  

-- Viewing the number of order that is greater than 12
SELECT 
    COUNT(*)
FROM
    (SELECT 
        order_id, COUNT(item_id) AS num_items
    FROM
        order_details
    GROUP BY order_id
    HAVING num_items > 12) AS num_orders;
