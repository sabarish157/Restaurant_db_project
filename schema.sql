-- Table: menu_items
CREATE TABLE menu_items (
    menu_item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Table: order_details
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,
    order_date DATE,
    order_time TIME,
    item_id INT,
    FOREIGN KEY (item_id) REFERENCES menu_items(menu_item_id)
);
