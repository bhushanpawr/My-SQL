# DATA QUERY LANGUAGE

USE learndb;

-- load the practicetables.sql file here

# get record of count of rows
SELECT COUNT(*) FROM myemp;

# get record of first 3 rows
SELECT * FROM myemp
LIMIT 3;

# get record of first 5 rows of specific columns
SELECT first_name, last_name,job_id,salary FROM myemp
LIMIT 5;

# get record for 'bonus'(20% of Salary) as new column
SELECT first_name, last_name,job_id,salary,salary*0.2 AS Bonus FROM myemp;

# get record for 'Total Salary' (Salary + Bonus)
SELECT first_name, last_name,job_id,salary,salary*0.2 AS Bonus ,salary+salary*0.2 AS Total_Salary FROM myemp;

# get record of all employee under department id 50
SELECT * FROM myemp WHERE dep_id=50;

# get rocord of all employee under manager id 100
SELECT * FROM myemp WHERE mgr_id=100;

# get record of all people who's salary is less than or equal to 10000
SELECT * FROM myemp WHERE salary <=10000;

# get first name, last name and job description of all people who's salary is more than 10000
SELECT first_name, last_name,job_id FROM myemp WHERE salary>10000;

# get record of all employee except department id 70
SELECT * FROM myemp WHERE dep_id <> 70;

# get record of all employee who joined after July 1st 2000
SELECT * FROM myemp WHERE hire_date >'2000-07-01';

# get record of all employee under department id 80 and earn more than 10000
SELECT * FROM myemp WHERE dep_id=80 AND salary >10000;

# get record of all employee under department id 70 or earn more than 10000
SELECT * FROM myemp WHERE dep_id=70 OR salary >10000;

# get record of all employee under department id 20,40,60
SELECT * FROM myemp WHERE dep_id IN (20,40,60);