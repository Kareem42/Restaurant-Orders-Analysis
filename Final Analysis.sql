-- Analyzing Customer Behavior
-- This SQL script analyzes customer behavior based on the provided database schema.
-- Combining the menu_items and order_details tables into a single table.
SELECT 
    *
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id;

-- What were the least and most ordered items? What categories were they in?
SELECT 
    item_name,
    category,
    COUNT(order_details_id) AS num_purchases
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY item_name , category
ORDER BY num_purchases;

-- What are the top 5 orders that spent the most money?
SELECT 
    order_id, SUM(price) AS total_spent
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spent DESC
LIMIT 5;

-- Viewing the details of the highest spend order.
SELECT 
    category, COUNT(item_id) AS num_items
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
WHERE
    order_id = 440
GROUP BY category;

-- Viewing the details of the top 5 highest spend orders.
SELECT 
    order_id, category, COUNT(item_id) AS num_items
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
WHERE
    order_id IN (440 , 2075, 1957, 330, 2675)
GROUP BY order_id , category;