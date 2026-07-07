
-- All simple queries of SQL for CRUD operations



-- Query For Creating Table in Database

CREATE TABLE student_data(
    id INT,
	name VARCHAR(20), -- max character allow in name 
	age INT,
	city VARCHAR(10)
)




-- Query For Creating / Inserting Data

-- Insert Single data

INSERT INTO student_data (id, name, age, city)(
VALUES  (101, 'Ahsan', 22, 'Badin')
);


-- Insert Multple data

INSERT INTO student_data(id, name , age, city)(
VALUES (102, 'Ali', 25, 'Karachi'),
       (103, 'Ahmed', 15, 'Multan' ),
	   (104, 'Raza', 19, 'Hyderabad'),
	   (105 , 'Mujeeb', 22, 'TandoBago')
)

-- Thing always remember :

--     Do Not give Comma (,) to last value
-- 	Case doesnt matter upper and lower both acceptable
-- 	Insert data in sequence as you give on columns 
-- 	String always accept single quote only ('')




-- Query For Read data 

SELECT *   --  colsname  here stering (*) mean all cols
FROM student_data; -- tablename

SELECT name  -- read only name col in student_data table
FROM student_data;


SELECT name , id , age  -- reading multiple cols at once 
FROM student_data;



-- Updating Data in Tables of DataBase

UPDATE student_data
SET name = 'Mehdi'
WHERE name = 'Mujeeb';


UPDATE student_data 
SET city = 'Lahore'
WHERE id = 102;




-- Deleting Data From Databse Table


DELETE FROM student_data
WHERE name = 'Mehdi';


DELETE FROM student_data
WHERE id = 101;


