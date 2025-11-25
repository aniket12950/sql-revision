-- Create teacher table
CREATE TABLE teacher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    subject VARCHAR(50),
    salary DECIMAL(10,2),
    designation VARCHAR(50),
    experience INT,        -- years of experience
    city VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    join_date DATE
);

-- Insert some teachers
INSERT INTO teacher (name, subject, salary, designation, experience, city, phone, email, join_date)
VALUES
('Rohit Patil', 'Maths', 45000, 'Senior Teacher', 10, 'Pune', '9876543210', 'rohit@example.com', '2015-06-12'),
('Anita Desai', 'Science', 42000, 'Assistant Teacher', 6, 'Mumbai', '9865321470', 'anita@example.com', '2018-07-19'),
('Sanjay Kulkarni', 'English', 38000, 'Teacher', 4, 'Nashik', '9854123698', 'sanjay@example.com', '2020-01-10'),
('Priya Jadhav', 'Computer', 50000, 'HOD', 12, 'Pune', '9845632107', 'priya@example.com', '2013-03-05'),
('Amit Shinde', 'History', 36000, 'Teacher', 3, 'Kolhapur', '9823165470', 'amit@example.com', '2021-09-14');

--Select all teachers
SELECT * FROM teacher;
--Select specific columns
SELECT name, subject, salary FROM teacher;
--WHERE condition
SELECT * FROM teacher WHERE city = 'Pune';
--WHERE with AND
SELECT * FROM teacher WHERE subject = 'Maths' AND salary > 40000;
--WHERE with OR
SELECT * FROM teacher WHERE city = 'Pune' OR city = 'Mumbai';
--ORDER BY salary 
SELECT * FROM teacher ORDER BY salary DESC;
--DISTINCT subjects
SELECT DISTINCT subject FROM teacher;
--LIKE query (name starting with A)
SELECT * FROM teacher WHERE name LIKE 'A%';
--BETWEEN salary range
SELECT * FROM teacher WHERE salary BETWEEN 40000 AND 50000;
--IN operator
SELECT * FROM teacher WHERE subject IN ('Maths', 'Science');
--LIMIT
SELECT * FROM teacher LIMIT 3;
--Count number of teachers in each city
SELECT city, COUNT(*) AS total_teachers 
FROM teacher 
GROUP BY city;




