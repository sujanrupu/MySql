CREATE DATABASE temp;
USE temp;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50),
    item_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);

-- Inserting sample data into the orders table
INSERT INTO orders (order_id, order_date) VALUES
(1, '2024-03-09'),
(2, '2024-03-08');

-- Inserting sample data into the order_items table
INSERT INTO order_items (item_id, order_id, item_name, item_price) VALUES
(101, 1, 'Item 1', 10.99),
(102, 1, 'Item 2', 15.99),
(103, 2, 'Item 3', 20.49),
(104, 2, 'Item 4', 8.99);

-- Selecting data from the orders table
SELECT * FROM orders;

-- Selecting data from the order_items table
SELECT * FROM order_items;

-- Deleting an order
DELETE FROM orders WHERE order_id = 1;

-- Selecting data from the orders table
SELECT * FROM orders;

-- Selecting data from the order_items table
SELECT * FROM order_items;