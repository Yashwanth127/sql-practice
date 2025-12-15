-- Day 1 SQL Practice

CREATE TABLE student (
    s_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    gender CHAR(1),
    marks FLOAT,
    dod DATE
);

INSERT INTO student VALUES
(1, 'yashwant', 24, 'M', 97, '2001-01-12'),
(2, 'yash', 24, 'M', 97, '2001-12-04'),
(3, 'yashchith', 24, 'F', 97, '2001-12-03'),
(4, 'yashcat', 24, 'M', 97, '2001-12-03');

SELECT * FROM student;
