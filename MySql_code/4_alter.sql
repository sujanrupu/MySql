CREATE DATABASE temp;
USE temp;

CREATE TABLE account (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    balance INT
);

-- Add new col
ALTER TABLE account ADD interest INT NOT NULL DEFAULT 0;

-- Modify column
ALTER TABLE account MODIFY interest FLOAT NOT NULL DEFAULT 0;

DESC account;

-- Drop column
ALTER TABLE account DROP interest;

-- Rename Table
ALTER TABLE account RENAME TO account_detail;
