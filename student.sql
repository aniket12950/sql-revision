/* 
Q1) Create a table student(id, name, age, marks, grade, city, class)
Q2) Insert 5 sample records.
Q3) Write basic SELECT queries using WHERE, AND, OR, LIKE, ORDER BY.
*/

-- Create Database
CREATE DATABASE school;
USE school;

--  Create Student Table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT,
    grade CHAR(1),
    city VARCHAR(50),
    class VARCHAR(20)
);

--  Insert  Records
INSERT INTO student (id, name, age, marks, grade, city, class) VALUES
(1, 'Rohan', 18, 85, 'A', 'Pune', '12th Sci'),
(2, 'Aniket', 17, 72, 'B', 'Mumbai', '11th Com'),
(3, 'Priya', 18, 90, 'A', 'Nashik', '12th Sci'),
(4, 'Sneha', 16, 65, 'C', 'Nagpur', '10th'),
(5, 'Ram', 17, 55, 'D', 'Pune', '11th Arts');


/* 10 Basic SQL Queries */

-- 1) Select all students
SELECT * FROM student;

-- 2) Students with marks greater than 70
SELECT name, marks FROM student WHERE marks > 70;

-- 3) Students from Pune
SELECT name, city FROM student WHERE city = 'Pune';

-- 4) Students with Grade A
SELECT name FROM student WHERE grade = 'A';

-- 5) Students age less than 18
SELECT name, age FROM student WHERE age < 18;

-- 6) City = Pune AND Grade = A
SELECT name FROM student WHERE city = 'Pune' AND grade = 'A';

-- 7) City = Mumbai OR City = Pune
SELECT name, city FROM student WHERE city = 'Mumbai' OR city = 'Pune';

-- 8) Students scoring between 60 and 90
SELECT name, marks FROM student WHERE marks BETWEEN 60 AND 90;

-- 9) Name starting with 'A'
SELECT * FROM student WHERE name LIKE 'A%';

-- 10) Sort students by marks descending
SELECT name, marks FROM student ORDER BY marks DESC;
