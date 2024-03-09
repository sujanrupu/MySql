CREATE DATABASE temp;
USE temp;

CREATE TABLE worker (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    joining_date DATE,
    salary DECIMAL(10, 2),
    department ENUM('hr', 'engineering', 'accounts')
);

INSERT INTO worker (first_name, last_name, joining_date, salary, department)
VALUES 
    ('John', 'Doe', '2023-05-10', 50000.00, 'hr'),
    ('Jane', 'Smith', '2023-03-15', 60000.00, 'engineering'),
    ('Alice', 'Johnson', '2023-07-20', 55000.00, 'accounts'),
    ('Bob', 'Williams', '2023-01-25', 52000.00, 'hr'),
    ('Michael', 'Brown', '2023-08-05', 58000.00, 'engineering'),
    ('Emily', 'Davis', '2023-04-12', 53000.00, 'accounts'),
    ('David', 'Jones', '2023-09-18', 56000.00, 'hr'),
    ('Sarah', 'Miller', '2023-06-22', 57000.00, 'engineering'),
    ('James', 'Wilson', '2023-02-08', 54000.00, 'accounts'),
    ('Jennifer', 'Taylor', '2023-10-30', 59000.00, 'hr');

SELECT * FROM worker ORDER BY salary;
SELECT * FROM worker ORDER BY salary DESC;

SELECT DISTINCT department FROM worker;

SELECT department, COUNT(department) FROM worker GROUP BY department;
SELECT department, AVG(salary) FROM worker GROUP BY department;
SELECT department, MIN(salary) FROM worker GROUP BY department;
SELECT department, MAX(salary) FROM worker GROUP BY department;

SELECT department FROM worker GROUP BY department HAVING  COUNT(department) > 3;

