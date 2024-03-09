CREATE DATABASE temp;
USE temp;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(255),
salary INT
);

INSERT INTO student VALUES(1,  'Ankit', 2000), (2, 'Shubham', 3000), (3, 'Jeet', 3500);

SELECT * FROM student WHERE name = 'Ankit';
SELECT * FROM student WHERE salary between 2500 AND 3000;
SELECT * FROM student WHERE name IN ('Ankit', 'Jeet');
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE name LIKE '%u%';

DROP DATABASE temp;