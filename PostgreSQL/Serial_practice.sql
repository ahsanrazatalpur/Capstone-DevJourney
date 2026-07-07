
CREATE TABLE sampleSerial(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
gmail VARCHAR(100) UNIQUE,
city VARCHAR(100) DEFAULT 'Badin'
);


INSERT INTO sampleSerial(id, name, gmail, city)
VALUES (1, 'Ahsan', 'ahsanraza@gmail.com', DEFAULT);

INSERT INTO sampleSerial(id, name, gmail, city)
VALUES (2, 'ALi', 'aliraza@gmail.com', DEFAULT),
       (3, 'Gull', 'gull@gmail.com', 'Hyderabad'),
	   (4, 'Ayaz', 'ayaz@gmail.com', 'Karachi'),
	   (5, 'Mehdi', 'mehdi@gmail.com', 'Lahore');



	   