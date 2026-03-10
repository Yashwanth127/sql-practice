Day 2 SQL Practice

-- Create table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

Insert data
INSERT INTO employees VALUES
(1, 'Rahul', 'IT', 60000, '2023-01-10'),
(2, 'Anita', 'HR', 45000, '2022-05-14'),
(3, 'Kiran', 'IT', 70000, '2021-09-20'),
(4, 'Megha', 'Finance', 55000, '2023-03-12');

View all records
SELECT * FROM employees;

Select specific columns
SELECT emp_name, salary FROM employees;

Filter records
SELECT * FROM employees WHERE salary > 50000;

Sort records
SELECT * FROM employees ORDER BY salary DESC;

Count number of employees
SELECT COUNT(*) FROM employees;

Average salary
SELECT AVG(salary) FROM employees;


going step  by step 