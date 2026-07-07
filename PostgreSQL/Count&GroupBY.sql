-- GROUP BY

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



-- GROUP BY

-- Company hai
-- uske kitne Department hai
-- her department mn kitne bande hai


SELECT department from employee
GROUP BY department; -- Department ke groups banao


SELECT DEPARTMENT , COUNT(id) FROM EMPLOYEE
GROUP BY department; -- Department ke group banao aur usmn id count kero


SELECT department , COUNT(id) FROM employee
GROUP BY department;


SELECT department , COUNT(id) FROM employee
GROUP BY department;




-- COUNT  (it count or sum a quantity)
SELECT COUNT(id) FROM employee; -- 


SELECT COUNT(fname) FROM employee;


SELECT AVG(id) FROM employee;

SELECT MAX(salary) FROM employee;

SELECT MIN(salary) FROM employee;

SELECT SUM(salary) FROM employee;

SELECT COUNT(id) FROM employee;

SELECT COUNT(gmail) FROM employee;

SELECT COUNT(department) FROM employee;

SELECT department FROM employee
GROUP BY department;

SELECT department , COUNT(id) FROM employee
GROUP BY department;


SELECT department , SUM(salary) FROM employee
GROUP BY department;

