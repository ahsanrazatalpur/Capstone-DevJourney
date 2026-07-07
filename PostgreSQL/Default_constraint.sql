-- DEFAULT value appear when we doesn't provide any value
-- PRIMARY KEY value cannot be same or null
-- multiple constrain use ker sakte hu ek value / col ke lye
-- UNIQUE for unique values


CREATE TABLE Studentname(
id INT PRIMARY KEY,
name VARCHAR(100) DEFAULT 'studentname',
city VARCHAR(100) NOT NULL
);

INSERT INTO Studentname(id, name, city)
VALUES (100 , 'Ahsan' , 'Badin');

INSERT INTO Studentname (id, name, city)
VALUES (100000 , '', 'Badin'),
        (120000 ,DEFAULT ,'Badin'), -- DEFULT likhoge to aigi
		(130000 , NULL, '');

SELECT * FROM Studentname;