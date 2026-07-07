-- Logical Operator 


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


-- and / AND     Both Value satisfy
-- OR / or       Atleast one value satisfy


SELECT * FROM employee
WHERE fname like 'A%' or fname like'%A';

SELECT * FROM employee
WHERE salary > 50000 and salary <90000;

SELECT * FROM employee
WHERE id >= 5 and id <= 9;


SELECT * FROM employee
WHERE department = 'HR' or salary >75000;

SELECT * FROM employee
WHERE fname <> 'Ahsan';    -- <> mean NOT


SELECT * FROM employee
WHERE NOT fname = 'Ahsan';  -- not likhne ka logic change hai

