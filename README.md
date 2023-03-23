# My-SQL

## SQL CORE COMMANDS

**DDL -** [Data Definition Langauge](https://github.com/bhushanpawr/My-SQL/blob/main/01-%20DDL%20%20Commands.sql)

(CREATE , ALTER , RENAME ,DROP, TRUNCATE)

Create - Create command is used for create a table

Alter - Alter command is used for add column,modify and delete column.

RENAME - Rename command is used for Rename table

DROP - Drop command is used for drop table or database

TRUNCATE - truncate command deletes the data inside table ,but not the table itself.


**DML -** [Data Manipulation Language](https://github.com/bhushanpawr/My-SQL/blob/main/02-%20DML%20Commands.sql)

(INSERT, UPDATE, DELETE)

Insert- Insert command is used for inserting a records into a table

Update- update command is used for updating table records

Delete - delete command is used for deleting records from table

**DQL -** [Data Query Language](https://github.com/bhushanpawr/My-SQL/blob/main/03-%20DQL%20Commands.sql)

(SELECT)

Select- select command is used for selection of records from the table

**DCL - Data Control Language** 

(GRANT, REVOKE)

**TCL -** [Transaction Control Language](https://github.com/bhushanpawr/My-SQL/blob/main/04%20-%20TCL%20Commands.sql)

(COMMIT, ROLLBACK)





## [CONSTRAINTS-](https://github.com/bhushanpawr/My-SQL/blob/main/06-%20CONSTARTINTS.sql)

***DOMAIN CONSTRAINTS***

NOT NULL- not null constraints ensure that column not have any null value

DEFAULT- set default value for column if nothing is present

CHECK - check constraint ensures that column satisfy given condition

ENUM - Enum allows to limit the value chosen from a list of permitted values in the column specification at the time of table creation.

INDEX- retrive data fastly and easily


***KEY CONSTRAINTS***

UNIQUE KEY - unique key allowes only unique value in column it could accept null values

PRIMARY KEY - primary key doesn't allowes null value and it only accepts unique values

FOREIGN KEY - foreign key prevents actions that could distroy link between tables




## [JOINS](https://github.com/bhushanpawr/My-SQL/blob/main/14-%20Joins.sql)

[Everything About SQL JOINS🔀🔩 - Medium.com](https://medium.com/@bhushanpawar1806/everything-about-sql-joins-ff80f4613b6f)

**INNER JOIN-** Returns records that have matching values in both tables.


**LEFT JOIN-** Returns all records from left table, and the matched records from right table.


**RIGHT JOIN-** Returns all records from right table, and the matched records from left table.


**FULL OUTER JOIN-** Returns all records from left and right table.


**SELF JOIN-** Returns records that have matching values in same table with different column.


**CROSS JOIN-** Returns all records present in the first table multiplied by all records present in the second table.
