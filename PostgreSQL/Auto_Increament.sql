-- AUTO INCREAMENT

-- SERIAL is a variable that auto increase its value 
-- SERIAL is used in the place of INT

CREATE TABLE Autoincrese(
id SERIAL PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50)
);

INSERT INTO Autoincrese
VALUES (1, 'Ahsan' , 'Raza'),
        (2, 'Ali', 'Raza'),
		(3, 'Mehdi', 'Raza'),
		(4, 'Gull', 'Talpur'),
		(5, 'Ayaz', 'Ali');




