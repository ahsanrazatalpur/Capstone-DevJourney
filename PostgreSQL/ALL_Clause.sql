-- CLAUSE



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



 -- WHERE   To find specific data

 SELECT * FROM employee
 WHERE fname = 'Ahsan';  -- Wo fname du jo Ahsan hai

 SELECT fname FROM employee
 WHERE fname like '%A';  -- Wo fname du jo A se start hote

 SELECT fname FROM employee
 WHERE fname like 'H%'; -- Wo fname du jo H se start hote

 SELECT * FROM employee
 WHERE salary between 50000 and 100000; -- WO data du jiski salary 50k se 100k hai


 SELECT fname FROM employee
 WHERE fname like '%a%'; -- Wo fname du jiske bch mn A hu


 SELECT * FROM employee
 WHERE fname like '_____'; -- Wo name le ao jiske name mn sirf 5 letter hai


 SELECT * FROM employee
 WHERE fname like '%a';  -- Wo data le ao jike last mn a hu


 SELECT * FROM employee
 WHERE fname like '__a__'; --esa name le ao jsike center mn a hu aur 5 letter hu



 -- DISTINCT   (unique wali le ao) 

 SELECT department FROM employee; -- All Department
 SELECT DISTINCT department FROM employee; -- ALl unique Department

 SELECT DISTINCT salary FROM employee; -- unique salary le ao

 SELECT DISTINCT hire_date FROM employee; -- Unique Hire date le ao



 -- Order By 

 SELECT * FROM employee
 ORDER BY fname;  -- fname ki sequence mn data le ao eg fname A,B,C..Z


 SELECT salary FROM employee
 ORDER BY salary DESC;  -- Decending order mn salary dikhao


 SELECT salary FROM employee
 ORDER BY salary ASC; -- Ascending order mn salary dikhao


 SELECT id FROM employee
 ORDER BY id DESC; -- id descending order mn dikhao



 -- LIMIT (expect limit number of output)

 SELECT * 
 FROM employee
 LIMIT 3;  -- 3 output show kero



 SELECT * FROM employee
 LIMIT 6; -- 6 output show kero


 SELECT fname FROM employee
 LIMIT 8; -- 8 fname show kero





 -- LIKE 

 SELECT fname FROM employee
 WHERE fname like 'A%'; --- WO name le ao jo A se start hote

 SELECT fname FROM employee
 WHERE fname like '%A'; -- ese name le ao jo A pe end hote

 SELECT fname FROM employee
 WHERE fname like '%A%' -- ese nam le ao jiske bch mn ek A hu

 SELECT fname FROM employee
 WHERE fname like '__A__' --ese name le ao jiske 5 char hu aur center mn A hu

 SELECT fname FROM employee
 WHERE fname Like '____' -- esa name le ao jsmn 4 chae hu



 

 