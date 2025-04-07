-- This SQL script is designed to explore the menu_items table in the restaurant_db database.
-- It will provide various analyses and insights into the menu items available in the restaurant.
-- Exploration of the menu_items table
use restaurant_db;

-- Viewing the menu_items table.
SELECT 
    *
FROM
    menu_items;

-- Finding the number of items on the menu.
SELECT 
    COUNT(*)
FROM
    menu_items;

-- Viewing the least items on the menu.
SELECT 
    *
FROM
    menu_items
ORDER BY price;

-- Viewing prices in descending order to view the most expensive menu_item.
SELECT 
    *
FROM
    menu_items
ORDER BY price DESC;

-- Viewing the number of Italian dishes that are on the menu.
SELECT 
    COUNT(*)
FROM
    menu_items
WHERE
    category = 'Italian';

-- Viewing the least expensive Italian dishes on the menu.
SELECT 
    item_name, price
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price;


-- Viewing the most expensive Italian dishes on the menu.
SELECT 
    item_name, price
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price Desc;

-- Viewing the number of dishes in each category.
SELECT 
    category, COUNT(menu_item_id) AS num_dishes
FROM
    menu_items
GROUP BY category;

-- The average dish price within each category.
SELECT 
    category, avg(price) AS avg_price
FROM
    menu_items
GROUP BY category;


    
