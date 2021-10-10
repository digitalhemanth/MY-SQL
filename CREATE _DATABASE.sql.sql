-- drop the database   

DROP DATABASE IF EXISTS Temp_db;

/* To create a new database in MySQL, you use the CREATE DATABASE statement with the following syntax: */

/*
CREATE DATABASE [IF NOT EXISTS] database_name
[CHARACTER SET charset_name]
[COLLATE collation_name] 

In this syntax:

First, specify name of the database after the the CREATE DATABASE keywords. The database name must be unique within a MySQL server instance. If you attempt to create a database with a name that already exists, MySQL will issue an error.
Second, use the IF NOT EXISTS option to conditionally create a database if it doesn’t exist.
Third, specify the character set and collation for the new database. If you skip the CHARACTER SET and COLLATE clauses, MySQL will the default character set and collation for the new database.

*/

CREATE DATABASE IF NOT EXISTS Temp_db; 
USE Temp_db;