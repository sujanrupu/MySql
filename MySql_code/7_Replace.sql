CREATE DATABASE temp;
USE temp;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO customers (customer_id, customer_name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com');

REPLACE INTO customers (customer_id, customer_name, email) VALUES
(1, 'John Doe', 'updated_john@example.com');

REPLACE INTO customers (customer_id, customer_name, email) VALUES
(3, 'New Customer', 'new_customer@example.com');

SELECT * FROM customers;
