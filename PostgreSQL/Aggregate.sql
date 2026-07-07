-- Aggregate Function
-- Used to do some calculation



CREATE DATABASE bankDB;

CREATE TABLE employee(
id SERIAL PRIMARY KEY,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
gmail VARCHAR(100) UNIQUE,
department VARCHAR(100),
salary INT DEFAULT 30000.00,
hire_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO employee(id, fname, lname, gmail, department, salary, hire_date)
VALUES (1, 'Ahsan', 'Raza', 'ahsanraza@gmail.com', 'HR', 95000.00, '2022-05-15'); --YYYY-MM-DD


INSERT INTO employee(id, fname, lname, gmail, department, salary, hire_date)
VALUES
(2, 'Ali', 'Khan', 'ali.khan@gmail.com', 'IT', 85000.00, '2021-03-10'),
(3, 'Sara', 'Ahmed', 'sara.ahmed@gmail.com', 'Finance', 92000.00, '2020-11-25'),
(4, 'Usman', 'Malik', 'usman.malik@gmail.com', 'Marketing', 78000.00, '2023-01-12'),
(5, 'Fatima', 'Noor', 'fatima.noor@gmail.com', 'HR', 88000.00, '2022-08-18'),
(6, 'Hamza', 'Sheikh', 'hamza.sheikh@gmail.com', 'Sales', 70000.00, '2021-06-05'),
(7, 'Zain', 'Iqbal', 'zain.iqbal@gmail.com', 'IT', 98000.00, '2019-09-30'),
(8, 'Ayesha', 'Siddiqui', 'ayesha.s@gmail.com', 'Finance', 91000.00, '2024-02-20'),
(9, 'Bilal', 'Hussain', 'bilal.h@gmail.com', 'Operations', 76000.00, '2020-12-14'),
(10, 'Hina', 'Aslam', 'hina.aslam@gmail.com', 'Support', 68000.00, '2023-07-01');



-- Where we need calculation ?
-- i need total number of data of table ?
-- employee with max salary ?


-- COUNT 
-- SUM
-- AVG
-- MIN
-- MAX


-- COUNT

SELECT COUNT(id) FROM employee;

SELECT COUNT(fname) FROM employee;




-- SUM

SELECT SUM(salary) FROM employee;

SELECT SUM(id) FROM employee;




-- AVG

SELECT AVG(salary) FROM employee;

SELECT AVG(id) FROM employee;




-- MIN

SELECT MIN(salary) FROM employee;

SELECT MIN(id) FROM employee;




-- MAX

SELECT MAX(salary) FROM employee;

SELECT MAX(id) FROM employee;