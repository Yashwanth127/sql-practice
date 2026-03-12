DAY 3 – SQL PRACTICE (GROUP BY & HAVING)

Today i practiced:
1. GROUP BY
2. Aggregate functions with GROUP BY
3. HAVING clause
4. Difference between WHERE and HAVING

STEP 1 – CREATE TABLE

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

STEP 2 – INSERT DATA
INSERT INTO employees VALUES
(1, 'Rahul', 'IT', 60000, '2023-01-10'),
(2, 'Anita', 'HR', 45000, '2022-05-14'),
(3, 'Kiran', 'IT', 70000, '2021-09-20'),
(4, 'Megha', 'Finance', 55000, '2023-03-12'),
(5, 'Arjun', 'IT', 65000, '2022-11-18'),
(6, 'Priya', 'HR', 48000, '2021-07-25');

STEP 3 – VIEW ALL DATA
SELECT * FROM employees;

STEP 4 – GROUP BY
GROUP BY is used to group rows that have the same values.
Example: group employees by department.

SELECT department
FROM employees
GROUP BY department;
Result will show unique departments.

STEP 5 – COUNT EMPLOYEES IN EACH DEPARTMENT

SELECT department, COUNT(*)
FROM employees
GROUP BY department;

Explanation:
COUNT(*) counts how many employees are in each department.

STEP 6 – AVERAGE SALARY BY DEPARTMENT

SELECT department, AVG(salary)
FROM employees
GROUP BY department;

Explanation:
AVG() calculates the average salary in each department.

STEP 7 – MAXIMUM SALARY IN EACH DEPARTMENT

SELECT department, MAX(salary)
FROM employees
GROUP BY department;

Explanation:
MAX() finds the highest salary in each department.

STEP 8 – MINIMUM SALARY IN EACH DEPARTMENT

SELECT department, MIN(salary)
FROM employees
GROUP BY department;

Explanation:
MIN() finds the lowest salary in each department.

STEP 9 – HAVING CLAUSE


HAVING is used to filter grouped data.

Example: show departments where average salary is greater than 50000.

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

STEP 10 – DIFFERENCE BETWEEN WHERE AND HAVING
WHERE:
Used to filter rows before grouping.

Example:
SELECT * FROM employees
WHERE salary > 50000;


HAVING:
Used to filter grouped results after GROUP BY.

Example:
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SUMMARY
New SQL concepts learned today:
GROUP BY  – groups rows with same values
COUNT()   – counts rows
AVG()     – calculates average
MAX()     – highest value
MIN()     – lowest value
HAVING    – filter grouped data
