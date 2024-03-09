CREATE DATABASE temp;
USE temp;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees (id, name, department) VALUES
(1, 'Alice', 'HR'),
(2, 'Bob', 'Sales'),
(3, 'Charlie', 'Marketing'),
(4, 'David', 'IT');

CREATE TABLE salaries (
    id INT,
    salary INT
);

INSERT INTO salaries (id, salary) VALUES
(1, 50000),
(2, 60000),
(3, 55000),
(5, 70000);

SELECT * FROM employees JOIN salaries;
SELECT * FROM employees JOIN salaries WHERE employees.id = salaries.id;
SELECT * FROM employees NATURAL JOIN salaries;
SELECT * FROM employees LEFT OUTER JOIN salaries ON employees.id = salaries.id;
SELECT * FROM employees RIGHT OUTER JOIN salaries ON employees.id = salaries.id;