CREATE TABLE sampleTable(
id INT,
name VARCHAR(20),
fathername VARCHAR(20),
age INT ,
phone INT,
class INT
);

INSERT INTO sampletable(id, name, fathername, age, phone , class)(
VALUES (100 , 'Ahsan', 'Amir', 22, 0311, 12)
)

INSERT INTO sampletable(id, name, fathername, age, phone, class)(
VALUES(200, 'Ahmed', 'Ali', 25, 0317, 11),
      (300, 'Zain', 'Khair', 24, 0327, 12),
	  (400 , 'Ismail', 'Asadullah', 21, 0322, 8),
	  (500, 'Gulam Nabi', 'Mumtaz', 26, 0300, 18)
);


SELECT * 
FROM sampletable;


SELECT name , fathername, age
FROM sampletable;


UPDATE sampletable
SET fathername = 'Amir Ali'
WHERE name = 'Ahsan';

UPDATE sampletable
SET name = 'Ahsan Raza'
WHERE id = 100;



-- Delete

DELETE FROM sampletable
WHERE name = 'Ismail'


SELECT *
FROM sampletable;