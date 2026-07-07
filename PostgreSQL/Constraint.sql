-- NOT NULL Constraint
-- NOT NULL mean value cannot be empty

CREATE TABLE constraintExample(
id INT NOT NULL, -- Id cannot be Null
name VARCHAR(10) NOT NULL  -- name cannot be Null
);


INSERT INTO constraintExample(id , name)
VALUES (10, 'ABC' );


