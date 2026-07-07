1. List down all the databse (show all the databse that already exist)
There are two ways to list out databse

1. SELECT datname FROM pg_databse;
2. \l

Steps
  - Open CMD or terminal
  - Run cmd psql -U postgres
    psql mean (psql for to connect db and to run sql cmds)
    -U (specify user)
    postgress (To login with user , postgres is default username)


    now run \l

    or to check dbs in PgAdmin (postgress)
    Open PgAdmin
    Tap on Server
    Tap on postgres (default user)
    Now on top right corner  tap on Query tool
    and on this console run
    SELECT datname FROM pg_database ; // this cmd show all databases 
    SELECT - kis column ka databse chahiye
    datname - column jisme database ke naam store hote hain.
    FROM  pg_datasbe  - pg_database name se 