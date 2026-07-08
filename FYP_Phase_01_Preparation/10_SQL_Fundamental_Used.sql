 -- Create database
CREATE DATABASE Fundamental_BackendDB;


-- Her topic ki new Table 

-- 01 Constraint 
-- Constraint is rule and restriction applied to the database table to contol
-- and validate the data being inserted , deleted and udpated .

-- Constarint that i used :
-- 1. PRIMARY KEY
-- 2. UNIQUE
-- 3. DEFAULT


CREATE TABLE constraint_example(
id INT PRIMARY KEY,  -- value not null and must be unique 
name VARCHAR(100) NOT NULL, -- null value cannot be accepted
gmail VARCHAR(100) UNIQUE, -- value must be unique
gender VARCHAR(50) DEFAULT 'Male' -- dafault value if value doesnt provide
);


--Note : One table has only one Primary Key


-- Sample / Test Inserted (One Value)

INSERT INTO constraint_example(id, name, gmail, gender)
VALUES (101, 'Ahsan Raza', 'ahsan@gmail.com', 'Male');


-- Many Values
INSERT INTO constraint_example(id, name, gmail, gender)
VALUES (102, 'Ali Raza', 'ali@gmail.com', DEFAULT),
       (103, 'Gull Talpur', 'gull@gmail.com', null), -- gender [null]
	   (104, 'Ayaz Ali', 'ayaz@gmail.com', 'Male'),
	   (105, 'Mehdi Raza', 'mehdi@gmail.com', DEFAULT);


	   -- You cannot skip any value 

	  -- Reading Data 

	  SELECT * FROM constraint_example;
	   




-- 02  CLAUSE
-- A clause speify what action the databse should perform

-- Clause i used :
-- 1. WHERE
-- 2. DISTINCT
-- 3. ORDER BY


CREATE TABLE clause_example(
id SERIAL PRIMARY KEY,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
age INT NOT NULL,
salary INT DEFAULT 30000.00,
department VARCHAR(100) NOT NULL
);

-- Inserting Data 

INSERT INTO clause_example(id, firstname, lastname, age, salary, department)
VALUES (101, 'Ahsan', 'Raza', 22, 95000.00, 'HR');

INSERT INTO clause_example(id, firstname, lastname, age, salary, department)
VALUES(102, 'Ali', 'Khan', 25, 95000.00, 'HR'),
      (103, 'Ahsan', 'Raza', 22, 95000.00, 'HR'),
      (104, 'Ahmed', 'Khan', 25, 72000.00, 'IT'),
      (105, 'Bilal', 'Raza', 30, 88000.00, 'Finance'),
      (106, 'Ali', 'Sheikh', 25, 95000.00, 'HR'),
      (107, 'Usman', 'Khan', 28, 72000.00, 'IT'),
      (108, 'Hamza', 'Raza', 22, 95000.00, 'HR'),
      (109, 'Ahsan', 'Ali', 27, 65000.00, 'Marketing'),
      (110, 'Bilal', 'Khan', 30, 88000.00, 'Finance');

-- Reading Data and Using Clause

SELECT * FROM clause_example;  -- reading full table


-- WHERE  
SELECT * 
FROM clause_example
WHERE age >25;  -- data where age greater 25

SELECT * 
FROM clause_example
WHERE department = 'HR';  -- Record Where department is HR


SELECT * 
FROM clause_example
WHERE salary >80000;  -- Record where salary is greater than 80000


SELECT * 
FROM clause_example
WHERE firstname = 'Ahsan'; -- Record where name is Ahsan

SELECT * 
FROM clause_example
WHERE id > 107;  -- Record where id is greater than 107




-- DISTINCT  (Provide Unique Rows)

SELECT DISTINCT firstname 
FROM clause_example;  -- unique first name

SELECT DISTINCT  lastname 
FROM clause_example;  -- unique last name

SELECT DISTINCT id 
FROM clause_example;   -- unique id

SELECT  DISTINCT firstname, id
FROM clause_example; -- unique first name and id


SELECT DISTINCT *
FROM clause_example; -- unique rows record


SELECT DISTINCT department
FROM clause_example; -- unique department

SELECT DISTINCT salary
FROM clause_example; -- unique salary


-- ORDER BY
-- DESC  (Decending order  10, 9, 8 ... 1)
-- ASC   (Ascending order 1, 2, 3 .. 10)
-- By default order is ASC



SELECT * 
FROM clause_example
ORDER BY firstname; -- All record in Alphabatic order by first name


SELECT * 
FROM clause_example
ORDER BY age; -- ALl record in ascending order of age


SELECT * 
FROM clause_example
ORDER BY salary;  -- ALl record in ascending order of salary


SELECT * 
FROM clause_example
ORDER BY age DESC;  -- Order by decending age


SELECT *
FROM clause_example
ORDER BY id DESC;  -- Order by id Descending


SELECT * 
FROM clause_example
ORDER BY salary DESC; -- Order by salary descending


SELECT *
FROM clause_example
ORDER BY lastname DESC;  -- Order by last name Descending

SELECT *
FROM clause_example
ORDER BY firstname DESC; -- Order by first name desending


SELECT *
FROM clause_example
ORDER BY department ASC;  -- ALl department order by ascending

SELECT * 
FROM clause_example
ORDER BY age ASC; -- order by age ascending



-- Aggregate functions

CREATE TABLE aggregate_example(
id SERIAL PRIMARY KEY,
fullname VARCHAR(100) NOT NULL,
age INT NOT NULL,
salary INT DEFAULT 50000,
experience INT NOT NULL
);


-- Inserting Data / Performing Aggregation
-- MIN (minimum value)
-- MAX (maximum value)
-- AVG (average value)

-- Single Value

INSERT INTO aggregate_example(id, fullname, age, salary, experience)
VALUES(101, 'Ahsan Raza', 22, 45000, 2);

-- Multiple Value

INSERT INTO aggregate_example(id, fullname, age, salary, experience)
VALUES (102, 'Ali Khan', 24, 48000, 1),
       (103, 'Ahmed Sheikh', 27, 52000, 3),
       (104, 'Bilal Memon', 30, 61000, 5),
       (105, 'Usman Qureshi', 26, 55000, 2),
       (106, 'Hamza Siddiqui', 29, 68000, 6),
       (107, 'Saad Ansari', 23, 43000, 1),
       (108, 'Zain Malik', 31, 75000, 7),
       (109, 'Farhan Abbasi', 35, 89000, 10),
       (110, 'Danish Shaikh', 28, 59000, 4);



-- MIN

SELECT MIN(age)
FROM aggregate_example;  -- minimum age


SELECT MAX(age)
FROM aggregate_example;  -- maximum age

SELECT AVG(age)
FROM aggregate_example;  -- average age


SELECT MIN(salary)
FROM aggregate_example; -- minimum salary

SELECT AVG(salary)
FROM aggregate_example; -- average salary


SELECT MIN(experience)
FROM aggregate_example;  -- minimum experience

SELECT MAX(salary)
FROM aggregate_example; -- maximum experience




-- Logical Operator 

-- AND
-- OR
-- NOT or  <>


CREATE TABLE logical_operator(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT NOT NULL,
salary INT DEFAULT 30000
);

INSERT INTO logical_operator(id, name, age, salary)
VALUES (101, 'Ahsan Raza', 22, 70000);


INSERT INTO logical_operator(id, name, age, salary)
VALUES (102, 'Ali Khan', 24, 55000),
       (103, 'Ahmed Sheikh', 27, 62000),
       (104, 'Bilal Memon', 30, 78000),
       (105, 'Usman Qureshi', 26, 59000),
       (106, 'Hamza Siddiqui', 29, 85000),
       (107, 'Saad Ansari', 23, 48000),
       (108, 'Zain Malik', 31, 92000),
       (109, 'Farhan Abbasi', 35, 105000),
       (110, 'Danish Shaikh', 28, 68000);



-- AND (Both value must satisfy)
SELECT *
FROM logical_operator
WHERE age > 20 and age < 30;  -- record where age  between 20 and 30


SELECT * 
FROM logical_operator
WHERE salary < 60000;  -- record where salary is less than 60000


SELECT * 
FROM logical_operator
WHERE id >106 and id < 110;  -- record where id is greater than 106 and less than 110 


SELECT * 
FROM logical_operator
WHERE salary >= 40000 and age < 30; -- record where salary > 40000 and age < 30


SELECT *
FROM logical_operator
WHERE id >5 and age <30; -- record where id > 5 and age < 30


SELECT *
FROM logical_operator
WHERE name = 'Ahsan Raza' and  age <20; -- record where name = ahsan or age < 20


-- OR  atleast one record match

SELECT *
FROM logical_operator 
WHERE name = 'Ahsan Raza' or salary > 90000;  -- record where name = Ahsan Raza and salary > 90000


SELECT *
FROM logical_operator
WHERE age > 50 or salary < 80000; -- record where age > 50 and salary < 80000



-- NOT

SELECT *
FROM logical_operator
WHERE NOT age = 30; -- record where age not equal to 30

SELECT *
FROM logical_operator
WHERE NOT name = 'Ahsan Raza'; -- Records where name is not equal to Ahsan


SELECT * 
FROM logical_operator
WHERE NOT age < 30; -- record where age not less than 30


SELECT *
FROM logical_operator
WHERE NOT salary > 50000;  -- record where salary not greater than 50000





-- String Function

-- iLIKE - insensitive LIKE
-- insensitive mean ignore Upper case and lower case

CREATE TABLE string_function(
id SERIAL PRIMARY KEY,
name VARCHAR(100) DEFAULT 'UNKNOW',
age INT NOT NULL,
department VARCHAR(100) NOT NULL
);

INSERT INTO string_function(id, name, age, department)
VALUES (1, 'AhsAn raZa', 22, 'hR');

INSERT INTO string_function(id, name, age, department)
 VALUES (2, 'aLI KhAn', 24, 'It'),
        (3, 'AHsAn ShEiKh', 27, 'FiNaNcE'),
        (4, 'bILaL RaZa', 30, 'mArKeTiNg'),
        (5, 'aLI QuReShI', 26, 'SaLeS'),
        (6, 'HaMzA KhAn', 29, 'oPeRaTiOnS'),
        (7, 'SaAd AnSaRi', 23, 'CuStOmEr SuPpOrT'),
        (8, 'AhSaN RaZa', 31, 'hR'),
        (9, 'fArHaN KhAn', 35, 'LeGaL'),
        (10, 'DaNiSh RaZa', 28, 'It');

-- ILIKE


	SELECT *
	FROM string_function
	WHERE name ILIKE '%Ahsan Raza'; -- Record Where name contain Ahsan Raza in any case(Upper , Lower , Mix)



    SELECT *
	FROM string_function
	WHERE name ILIKE '%Ahsan%';  -- Record Where name contain Ahsan in any case(Upper , Lower , Mix)


	SELECT *
	FROM string_function
	WHERE department ILIKE '%hr%';  -- Record Where Department contain HR in any case(Upper , Lower , Mix)


	SELECT *
	FROM string_function
	WHERE name ILIKE '%raza%';  -- Record Where name contain Raza Contain (first + last )in any case(Upper , Lower , Mix)

	SELECT *
	FROM string_function
	WHERE name ILIKE '%khan%';   -- Record Where name contain Khan in any case(Upper , Lower , Mix)





-- SERIAL / Auto increament
-- SERIAL use kerne ke lye id na lagao insert mn 

CREATE TABLE serial_example(
 id SERIAL PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 emp_id INT UNIQUE,
 city VARCHAR(100)
);


INSERT INTO serial_example(name, emp_id, city)
VALUES ('Ahsan Raza', 101, 'Badin');


INSERT INTO serial_example(name, emp_id, city)
VALUES ('Ali Raza', 102, 'Hyderabad'),
       ('Ahsan Khan', 103, 'Karachi'),
       ('Ahmed Sheikh', 104, 'Lahore'),
       ('Bilal Memon', 105, 'Islamabad'),
       ('Usman Qureshi', 106, 'Sukkur'),
       ('Hamza Siddiqui', 107, 'Multan'),
       ('Saad Ansari', 108, 'Faisalabad'),
       ('Zain Malik', 109, 'Quetta'),
       ('Farhan Abbasi', 110, 'Peshawar')


SELECT *
FROM serial_example;

-- id dalne ki need nh SERIAL khud lagaega aur auto increase krega 
-- bs yad rakhna Insert ke time id na likhe bs table mn ek bar likhdo

SELECT id 
FROM serial_example; -- 1, 2, 3, 4, 5, 6, 7, 8, 9, 10



-- Relational Operator 
 -- <  less than
 -- >  greater than
 -- <= less than equal to
 -- >= greater than
 -- =  is equal to
 -- != is not equal to


CREATE TABLE relational_example(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL,
age INT NOT NULL,
emp_id INT UNIQUE
 );

 INSERT INTO relational_example(name, city, age, emp_id)
 VALUES('Ahsan Raza', 'Badin', 22, 101);


INSERT INTO relational_example(name, city, age, emp_id)
VALUES
('Ali Khan', 'Karachi', 24, 102),
('Ahmed Sheikh', 'Hyderabad', 27, 103),
('Bilal Memon', 'Sukkur', 30, 104),
('Usman Qureshi', 'Lahore', 26, 105),
('Hamza Siddiqui', 'Islamabad', 29, 106),
('Saad Ansari', 'Faisalabad', 23, 107),
('Zain Malik', 'Multan', 31, 108),
('Farhan Abbasi', 'Quetta', 35, 109),
('Danish Shaikh', 'Peshawar', 28, 110);


SELECT *
FROM relational_example
WHERE age < 20;      -- Records where age is less than 20

SELECT *
FROM relational_example
WHERE emp_id > 107;  -- Records where emp_id is greater than 107

SELECT *
FROM relational_example
WHERE age <= 35;     -- Records where age is less than or equal to 35

SELECT *
FROM relational_example
WHERE emp_id >= 106; -- Records where emp_id is greater than or equal to 106

SELECT *
FROM relational_example
WHERE age = 30;      -- Records where age is equal to 30

SELECT *
FROM relational_example
WHERE age != 35;     -- Records where age is not equal to 35



-- Relationship  - relation between two table
-- like department table and employee table (konsa employee kis dept ka hai)


-- Foreign Key  - Ek column hota jo dusre table mn PK (Primary Key) ka refer kerta hai


-- Department Table
CREATE TABLE department(
dept_name VARCHAR(100),
dept_id INT PRIMARY KEY
);

CREATE TABLE employe(
emp_name VARCHAR(100),
emp_id INT PRIMARY KEY,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


-- dept hai 
-- id      name
-- 1         HR
-- 2         Finance
-- 3         IT


-- Emp hi
-- id       name 
-- 101       Ahsan
-- 102       Ali 
-- 103       Ahemd


-- tum manager hu aur HR tumhen bole tum Ali ko HR deprt du aur Ahsan aur Ahmed ko Finance Dept du 

INSERT INTO department(dept_id, dept_name)
VALUES (1, 'HR'),
       (2, 'IT'),
       (3,  'Finance');


INSERT INTO employe(emp_id, emp_name, dept_id)
VALUES (101, 'Ahsan', 3),
       (102, 'Ali', 1),
	   (103, 'Ahmed', 3);






CREATE TABLE course(
course_id INT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL
);

INSERT INTO course(course_id, course_name)
VALUES(101, 'DBMS'),
      (102, 'Python'),
	  (103, 'AI');


CREATE TABLE student(
student_id INT PRIMARY KEY,
student_name VARCHAR(100) NOT NULL,
course_id INT, -- we cannot make it PK , bc There must be one PK in a table and we expected to same id
FOREIGN KEY (course_id) REFERENCES  course (course_id) -- Foreign key ka ye pattern hai yad rkhna
);

INSERT INTO student(student_id, student_name, course_id)
VALUES (1, 'Ahsan', 102), -- Python give to Ahsan
       (2, 'ALi', 103),   -- AI give ti ALi
	   (3, 'Ahmed', 101); -- DBMS give to Ahmed



CREATE TABLE city(
city_id INT PRIMARY KEY,
city_name VARCHAR(100) NOT NULL
);


CREATE TABLE customer(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
city_id INT,
FOREIGN KEY (city_id) REFERENCES city(city_id)
);

INSERT INTO city(city_id, city_name)
VALUES (11, 'Karachi'),
       (12, 'Hyderabad'),
	   (13, 'Badin');


INSERT INTO customer(customer_id, customer_name, city_id)
VALUES (1, 'Bilal', 13),
       (2, 'Hamza', 11),
	   (3, 'Saad', 12);


CREATE TABLE category(
category_id INT PRIMARY KEY,
category_name VARCHAR(100) NOT NULL
);

CREATE TABLE book(
book_id INT PRIMARY KEY,
book_name VARCHAR(100),
category_id INT ,
FOREIGN KEY (category_id) REFERENCES category (category_id)
);


INSERT INTO category(category_id, category_name)
VALUES (1, 'Programming'),
       (2, 'History'),
	   (3, 'Science');

INSERT INTO book(book_id, book_name, category_id)
VALUES (1, 'Python Basic', 1),
       (2, 'World War II', 2),
	   (3, 'Physices', 3);