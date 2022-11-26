CREATE DATABASE training;
USE training;

--  CREATE TABLE FOR CUSTOMER
CREATE TABLE customer(
Cust_ID INT,
Cust_Name VARCHAR(100),
Gender VARCHAR(1),
Age INT,
City VARCHAR(50),
Contact VARCHAR(50));

SELECT * FROM customer;

-- LOAD DATA INTO TABLE
INSERT INTO customer VALUES(1000,'Bhushan Pawar','M',22,'Nashik','+91 9988776655');
INSERT INTO customer VALUES(1001,'Vaibhav Avhad ','M',21,'Malegaon','+91 7755990033');
INSERT INTO customer VALUES(1002,'Dinesh Shevkar','F',24,'Delhi','+91 8877669955');
INSERT INTO customer VALUES(1003,'Sangram Satpute','M',18,'Hydrabad','+91 7788996655');
INSERT INTO customer VALUES(1004,'Om Pawar','M',21,'East London','+91 8833994433');

-- Load data for specific column (for empty column it will show 'null' as output)
INSERT INTO customer(Cust_ID,Cust_Name,Gender,Age,Contact) VALUES(1005,'Apps Ekhande','F',21,'+91 9988776644');
INSERT INTO customer(Cust_ID,Cust_Name,Gender,City)        VALUES(1006,'Sakshi Sherewar','F','Hydrabad');
INSERT INTO customer(Cust_ID,Cust_Name,Contact)            VALUES(1007,'Vaibhavi Pawar','+91 9933001122');