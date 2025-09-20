-- 1. Total revenue from all orders
SELECT SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id;

-- 2. Top 10 most popular menu items
SELECT m.item_name, COUNT(*) AS order_count
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY m.item_name
ORDER BY order_count DESC
LIMIT 10;

-- 3. Revenue by menu category
SELECT m.category, SUM(m.price) AS category_revenue
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY m.category
ORDER BY category_revenue DESC;

-- 4. Number of orders per day
SELECT order_date, COUNT(DISTINCT order_id) AS total_orders
FROM order_details
GROUP BY order_date
ORDER BY order_date;

-- 5. Peak ordering hours
SELECT HOUR(order_time) AS hour_of_day, COUNT(*) AS orders_count
FROM order_details
GROUP BY HOUR(order_time)
ORDER BY orders_count DESC;

-- 6. Average order size (number of items per order)
SELECT AVG(item_count) AS avg_items_per_order
FROM (
    SELECT order_id, COUNT(*) AS item_count
    FROM order_details
    GROUP BY order_id
) AS order_summary;

-- 7. Highest revenue order (by order_id)
SELECT o.order_id, SUM(m.price) AS order_revenue
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY o.order_id
ORDER BY order_revenue DESC
LIMIT 1;

-- 8. Most expensive item on the menu
SELECT item_name, price
FROM menu_items
ORDER BY price DESC
LIMIT 1;

-- 9. Cheapest item on the menu
SELECT item_name, price
FROM menu_items
ORDER BY price ASC
LIMIT 1;

-- 10. Daily revenue trend
SELECT order_date, SUM(m.price) AS daily_revenue
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY order_date
ORDER BY order_date;
