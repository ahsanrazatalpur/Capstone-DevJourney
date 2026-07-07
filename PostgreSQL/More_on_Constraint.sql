-- NOT NULL and PRIMARY KEY constraint dono sath mn lagane ki need nh qki
-- NOT NULL mean Not an empty value
-- PRIMARY KEY mean Not an empty value nor same (value must be unique)
-- islye NOT NULL ka kam b PRIMARY KEY ker raha


CREATE TABLE sample(
id INT PRIMARY KEY,
name VARCHAR(100) DEFAULT 'studentname',
city VARCHAR(100) NOT NULL DEFAULT 'City'
);


INSERT INTO sample(id, name, city)
VALUES (700 , '', ''),  -- 100  baqi dono value nh di
    -- (200, 'Badin')   ye error hai value skip nh ker sakte
    -- (300, NULL , 'NULL')  error qki mn specify kya NULL na ho
	   (500, NULL , 'Badin'),  -- 300 [null] Badin
	   (600 , DEFAULT , 'Badin'); -- 600 studentname Badin



SELECT * FROM sample;