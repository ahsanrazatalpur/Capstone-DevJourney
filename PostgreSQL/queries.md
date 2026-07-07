- Query For See All Databse in PgAdmin terminal

    SELECT tabname FROM pg_databse;

- Query For See All Databse in Window Terminal (CMD)

    psql -U postgress

    // Here psql mean connect SQL and run SQL cmds
    // -U mean specify user
    // postgress defaul username


- Note use \q to come out from PgAdmin console in Win terminal



- Query to Create New Database (we can write it upper as well as in lower case)
 
      CREATE DATABSE <Database_Name>; // upper case is more readable
      oe 
      create databse <databse_name>;


- Note if query is large so you can write on query in multiple lines 
    eg
    CREATE DATASBE
    SAMPLE_DB ;

    query only run or end when you give semicolon.


- Note : Top refresh databases in pgAdmin in case you have create new databse just left click on  databse and tap on refresh


- To Shift From One Db to another (you can work with on db at a time)

   \c <Db_name>


- To delete any databse
    
    drop database <db_name>

 





 CRUD operation in Database 
 CRUD stand for
 C create 
 R read
 U update 
 D delete



 Creating Table in Databse 

 Table mean : A table is a collection of related data held in table format in database.


 CREATE TABLE <Table_name>(
      id INT,
      name VARCHAR(100), // here 100 is max limit of char
      city VARCHAR(100)  // Do not use colon at last value
 );



 - Move to that databse 
       \c persondb (db name)

    To check all data
        \d person (tablename)




- Inserting Data in database Table
 
 insert single data
 INSERT INTO (table_name) (All Colmn name) 
    now add data and give values in seques as you give in columns
    VALUES  001 , 'Ahsan, 'Badin,
 

INSERT INTO person(id, name , city)(
VALUES (001 , 'Ahsan', 'badin,)
);


-  Adding Multiple Values

INSERT INTO person(id, name , city)
VALUES (001, 'Ahsan', 'Badin'),
       (002, 'Ali' , 'Badin' ),
       (003, 'Shahzaib', 'Karachi');




- Reading Tables
SELECT * FROM <Table_name>

* // all data


SELECT name FROM person; // read all the name of that table

select city from person; // read all teh city from those columns




- read two columns at a time

SELECT name , id 
FROM person;

- Update any data 

UPDATE <table_name>
SET name = 'Ali
Where name = 'Ahsan';


update person 
set city = 'Badin'
where id = 001;


- Delete Data 
DELETE FROM <table_name>
WHERE id = 004;