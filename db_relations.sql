-- Table: teacher
CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

-- Table: student
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

-- Many-to-Many relationship: junction table
CREATE TABLE student_teacher (
    student_id INT,
    teacher_id INT,
    PRIMARY KEY (student_id, teacher_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);
-----------------------------------------------
-- Table: teacher
CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

-- Table: student
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    
    -- One-to-Many relationship: each student belongs to one teacher
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);
-----------------------------------------------
-- Table: teacher
CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

-- Table: student
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    
    -- Many-to-One relationship: many students belong to one teacher
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);
-----------------------------------------------
-- Table: teacher
CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

-- Table: student
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    
    -- One-to-One relationship: each student has exactly one mentor teacher
    mentor_id INT UNIQUE,
    FOREIGN KEY (mentor_id) REFERENCES teacher(teacher_id)
);

