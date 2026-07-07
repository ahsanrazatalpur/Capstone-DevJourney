-- String Function

-- CONCAT , CONTACT_WS -- Jorna 
-- SUBSTR
-- LEFT,RIGHT
-- LENGTH
-- UPPER, LOWER
-- TRIM, LTRIM, RTRIM
-- REPLACE
-- POSITION
-- STRING_AGG




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



-- CONCAT   (Jorna)
SELECT CONCAT('Hello', ' World'); -- Hello World

SELECT CONCAT('firstName ', 'LastName'); --firstNameLastName

SELECT CONCAT('Ahsan', ' Raza'); -- AhsanRaza

SELECT CONCAT(fname , lname) FROM employee; -- all firstname and lastName combine

SELECT CONCAT(id, fname) FROM employee; -- all id and first name combile eg : 1Ahsan

SELECT id, CONCAT(fname, lname) AS FullName , department FROM employee; -- crete new column name FullName inside i we have fname and last name combinely eg :AhsanRaza

SELECT CONCAT(fname,' ', lname) AS FullName FROM employee; -- All firstname (whitespace) lastname eg :Ahsan Raza



-- CONCAT_WS

SELECT CONCAT_WS('-', fname ,lname) FROM employee; -- All fname and last name seprated by -

SELECT CONCAT_WS (' ', fname , lname) AS FullName From employee;  -- All first name and last name seprated by  whitespace

SELECT CONCAT_WS('_', fname, lname ) AS FullName FROM employee; -- All fname and lname seprated by _


SELECT CONCAT_WS(':' ,'One', 'Two', 'Three'); -- One:Two:Thre



-- SUBSTRING  (A part of String)

-- Here Substring indexing start from 1
-- SUBSTRING and SUBSTR are same

SELECT SUBSTR('Hello Buddy', 1, 5); -- Hello  here 1 mean start index and 6 means end index

SELECT SUBSTRING('Hello Buddy', 7, 11); -- buddy

SELECT SUBSTR('Ahsan Raza', 1, 5); -- Ahsan

SELECT SUBSTR('Ahsan Raza', 7, 10); -- Raza



-- REPLACE  (To replace a word)

-- RELAPCE ('Word' , 'old word', 'new word');

SELECT REPLACE('Ahsan Ali','Ali', 'Raza' );

SELECT REPLACE('ABCDEF', 'ABC', 'PQR');

SELECT REPLACE('MY BOY' , 'BOY', 'GIRL');

SELECT REPLACE (department , 'HR', 'CSS') FROM employee;



-- REVERSE  (reverse the order)

SELECT REVERSE ('My Name Is Ahsan Raza'); -- azaR nashA sI emaN yM

SELECT REVERSE('GOOL'); -- LOOG

SELECT REVERSE(fname) FROM employee;  -- fname will be reverse



-- LEGTH  (return length of String)

SELECT LENGTH('My name is Ahsan Raza'); -- 21

SELECT LENGTH('The Father Of Dr ABdus Salam Carrying From Good Europe Asia'); --59

SELECT LENGTH(fname) FROM employee;


SELECT fname FROM employee
WHERE LENGTH(fname) < 5;  -- All fname less than 5 char

SELECT department FROM employee
WHERE LENGTH(department) <10;



-- UPPER and LOWER

SELECT UPPER(fname) FROM employee;

SELECT LOWER(department) FROM employee;

SELECT LOWER(lname) FROM employee;


-- LEFT  and RIGHT same as subString


SELECT LEFT ('Hello World', 5); -- Hello

SELECT RIGHT ('Hello World', 5); -- World




-- TRIM  (auto remove space)

SELECT TRIM('   Hello World   ');
SELECT LENGTH(TRIM('     Hello   World'));



-- Position (return position of particualr word)

 SELECT POSITION('ll' in 'Hello World'); -- 3






 -- PRACTICE



SELECT CONCAT_WS(':', id, fname, lname, department) FROM employee
LIMIT 1;

SELECT CONCAT(CONCAT_WS())

