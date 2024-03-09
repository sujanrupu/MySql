CREATE DATABASE temp;
USE temp;

-- Table 1: Students
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    major VARCHAR(50)
);

-- Inserting sample data into Students table
INSERT INTO Students (name, age, major) VALUES
('John', 20, 'Computer Science'),
('Alice', 22, 'Mathematics'),
('Bob', 21, 'Physics'),
('Sarah', 19, 'Biology');

-- Table 2: Professors
CREATE TABLE Professors (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

-- Inserting sample data into Professors table
INSERT INTO Professors (name, age, department) VALUES
('Dr. Smith', 45, 'Computer Science'),
('Dr. Johnson', 50, 'Mathematics'),
('Dr. Lee', 55, 'Physics'),
('Dr. Davis', 48, 'Biology');

SELECT student_id FROM Students
UNION
SELECT professor_id FROM Professors;

SELECT student_id FROM Students
UNION ALL
SELECT professor_id FROM Professors;

SELECT * FROM Students
WHERE name NOT IN (SELECT name FROM Professors);


