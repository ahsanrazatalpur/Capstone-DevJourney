CREATE DATABASE BankDB;


CREATE TABLE myemployees(
emp_id SERIAL PRIMARY KEY,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
dept VARCHAR(100) NOT NULL,
salary INT NOT NULL DEFAULT 30000,
hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO myemployees(emp_id, fname, lname, email, dept, salary, hire_date)
VALUES  (1, 'Ahsan', 'Raza', 'ahsanraza@gmail.com','IT',  900000, 30-05-2026 ), --date issue
         (2, 'ALi , Raza', 'aliraza@gmail.com', 'CS', 100000, 10-01-2022); -- date issue

SELECT * FROM employees;