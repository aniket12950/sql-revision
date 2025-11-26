
--  Create TEACHER table

CREATE TABLE teacher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    subject VARCHAR(50),
    salary DECIMAL(10,2),
    designation VARCHAR(50),
    experience INT,
    city VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    join_date DATE
);

-- Create STUDENT table with foreign key


CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT,
    grade CHAR(1),
    city VARCHAR(50),
    class VARCHAR(20),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teacher(id)
);


-- Insert teacher records


INSERT INTO teacher (name, subject, salary, designation, experience, city, phone, email, join_date)
VALUES
('Rahul Deshmukh','Math',45000,'Senior Teacher',10,'Pune','9876543210','rahul@school.com','2015-06-10'),
('Priya Patil','Science',42000,'Teacher',7,'Mumbai','9988776655','priya@school.com','2018-04-01'),
('Amit Kulkarni','English',40000,'Teacher',5,'Nashik','9123456789','amit@school.com','2020-01-15');


--  Insert  student records


INSERT INTO student (id, name, age, marks, grade, city, class, teacher_id)
VALUES
(1, 'Aniket', 20, 85, 'A', 'Pune', 'FYBSC', 1),
(2, 'Sneha', 19, 78, 'B', 'Mumbai', 'SYBSC', 2),
(3, 'Rohan', 21, 92, 'A', 'Pune', 'TYBSC', 1),
(4, 'Priya', 20, 67, 'C', 'Nashik', 'FYBSC', 3),
(5, 'Samir', 22, 74, 'B', 'Pune', 'TYBSC', 2);



-- Show students from Pune


SELECT * FROM student
WHERE city = 'Pune';


-- Display students ordered by highest marks


SELECT name, marks FROM student
ORDER BY marks DESC;


-- Find average marks of all students


SELECT AVG(marks) AS average_marks
FROM student;


-- Find minimum marks


SELECT MIN(marks) AS minimum_marks
FROM student;


-- Find maximum marks


SELECT MAX(marks) AS maximum_marks
FROM student;


-- Show student name with teacher name


SELECT s.name AS student, t.name AS teacher, t.subject
FROM student s
JOIN teacher t ON s.teacher_id = t.id;
