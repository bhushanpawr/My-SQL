# Comparison Operator
/*
	=           [ Equal to ] 
	!=          [ Not equal to ] 
	<>          [ Not equal to ] 
	<           [ Less than ] 
	>           [ Grater than ]  
	<=          [ Less than equal to ] 
	>=          [ Greater than equal to ]  
*/

CREATE DATABASE Comparison;
USE Comparison;

CREATE TABLE emp_info(
  emp_id INT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  hire_date DATE,
  salary INT
);

INSERT INTO emp_info VALUES  
(1,'Joshua','Patel','2011-07-27',10000),
(2,'Trenna','Rajs','1984-07-28',7000),
(3,'Curtis','Davies','1989-07-29',18000),
(4,'Randall','Matos','1980-07-30',12000),
(5,'Peter','Vargas','1998-07-31',15000),
(6,'John','Russell','1991-08-01',11000),
(7,'Karen','Partners','2019-08-02',10500),
(8,'Alberto','Errazuriz','1987-08-03',18000),
(9,'Gerald','Cambrault','2015-08-04',9500),
(10,'Eleni','Zlotkey','1982-08-05',12000),
(11,'Peter','Tucker','1999-08-06',17000),
(12,'David','Bernstein','2013-08-07',8000),
(13,'Peter','Hall','1983-08-08',17500),
(14,'Christopher','Olsen','1979-08-09',9500),
(15,'Nanette','Cambrault','1988-08-10',16000),
(16,'Oliver','Tuvault','1992-08-11',14500),
(17,'Janette','King','1994-08-12',12000),
(18,'Patrick','Sully','2002-08-13',19000),
(19,'Allan','McEwen','1986-08-14',13000),
(20,'Lindsey','Smith','1999-08-15',9000);

SELECT * FROM emp_info;

SELECT * FROM emp_info WHERE salary = 9500;

SELECT * FROM emp_info WHERE salary != 9500;

SELECT * FROM emp_info WHERE salary <> 9500;

SELECT * FROM emp_info WHERE YEAR(hire_date) < 1999;

SELECT * FROM emp_info WHERE YEAR(hire_date) > 1999;

SELECT * FROM emp_info WHERE YEAR(hire_date) <= 1999;

SELECT * FROM emp_info WHERE YEAR(hire_date) >= 1999;