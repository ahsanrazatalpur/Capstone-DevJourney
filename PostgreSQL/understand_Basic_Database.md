Understanding What is Database ?

Database  : An organized collection of data and A method to manipulate and acces the data .

organized data  :  All data set in sequence 

FirstName    LastName      Age
Ahsan          Raza         22
Talha          Arain        21

These data same as excel and miscrosoft but if we have large amount of data  (eg : million of data)
so they wont load on excel and microsoft and also can cause do not open or acces any file


unorganized data : All data store in massy way 

Ahsan       Arain     22
21          Talha     Raza


Database Vs DBMS (Database management System)

DBMS (Database management System) is a software that store , organize , manage and retrieve the data
efficiently


RDBMS ?
(Relational Databse management System)
Relation used where data store in tables (rows and cols)

RDBMS : A type of database that store data in structured table (rows + columns) and use SQL for managing and querying data .


Some Other examples of database : 
1. MongoDB
2. Oracle
3. MySQl
4. PostgreSQL
5. Firebird
6. Redis
etc..



SQL VS PostgreSQl

SQL : Structured Query Language which is used to talk to our databse 
Example : SELECT* FROM person_db




Databse VS Schema VS Tables

DBMS
│
├── Database
│     │
│     ├── Schema
│     │      │
│     │      ├── Table
│     │      ├── Table
│     │      └── Table
│     │
│     └── Schema
│            ├── Table
│            └── Table



Here 
Databse is like container for all data of project

Example :
Databse : Hotelmanagement etc
in Databse we have 
  - Fuctions
  - Schemas 
  - Tables
  - Views
  - etc



Schema : Schema is just like a folder
or it is consider as room inside home

Example :

Database
│
├── public
├── admin
└── customer

There must be different tables inside these schemas



Table : Table is a place where actual data store 

Example :

| id | name  | age |
| -- | ----- | --- |
| 1  | Ahsan | 21  |
| 2  | Ali   | 22  |



Another Example

Database
│
└── HotelDB
      │
      ├── public
      │      ├── rooms
      │      ├── bookings
      │      └── customers
      │
      └── admin
             ├── employees
             └── salaries

Here :
Database = HotelDB
Schema = public, admin
Tables = rooms, bookings, customers, employees, salaries



