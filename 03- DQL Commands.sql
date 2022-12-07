# DATA QUERY LANGUAGE
CREATE DATABASE DQL;
USE DQL;

CREATE TABLE myemp (
  EMP_ID INT,
  FIRST_NAME VARCHAR(20),
  LAST_NAME VARCHAR(25),
  EMAIL VARCHAR(25),
  HIRE_DATE DATE,
  JOB_ID VARCHAR(10),
  SALARY DECIMAL(8,2),
  COMMISSION_PCT DECIMAL(2,2),
  MGR_ID DECIMAL(6,0),
  DEP_ID DECIMAL(4,0)
) ;

INSERT INTO myemp VALUES
(101,'Neena','Kochhar','NKOCHHAR','1987-06-18','AD_VP',17000.00,0.00,100,90),
(102,'Lex','De Haan','LDEHAAN','1987-06-19','AD_VP',17000.00,0.00,100,90),
(103,'Alexander','Hunold','AHUNOLD','1976-06-20','IT_PROG',9000.00,0.00,102,60),
(104,'Bruce','Ernst','BERNST','1987-06-21','IT_PROG',6000.00,0.00,103,60),
(105,'David','Austin','DAUSTIN','1987-06-22','IT_PROG',4800.00,0.00,103,60),
(106,'Valli','Pataballa','VPATABAL','1980-06-23','IT_PROG',4800.00,0.00,103,60),
(107,'Diana','Lorentz','DLORENTZ','1987-06-24','IT_PROG',4200.00,0.00,103,60),
(108,'Nancy','Greenberg','NGREENBE','1987-06-25','FI_MGR',12000.00,0.00,101,100),
(109,'Daniel','Faviet','DFAVIET','1992-06-26','FI_ACCOUNT',9000.00,0.00,108,100),
(110,'John','Chen','JCHEN','1987-06-27','FI_ACCOUNT',8200.00,0.00,108,100),
(111,'Ismael','Sciarra','ISCIARRA','1987-06-28','FI_ACCOUNT',7700.00,0.00,108,100),
(112,'Jose Manuel','Urman','JMURMAN','1981-06-29','FI_ACCOUNT',7800.00,0.00,108,100),
(113,'Luis','Popp','LPOPP','1987-06-30','FI_ACCOUNT',6900.00,0.00,108,100),
(114,'Den','Raphaely','DRAPHEAL','1987-07-01','PU_MAN',11000.00,0.00,100,30),
(115,'Alexander','Khoo','AKHOO','1983-07-02','PU_CLERK',3100.00,0.00,114,30),
(116,'Shelli','Baida','SBAIDA','1987-07-03','PU_CLERK',2900.00,0.00,114,30),
(117,'Sigal','Tobias','STOBIAS','1987-07-04','PU_CLERK',2800.00,0.00,114,30),
(118,'Guy','Himuro','GHIMURO','1995-07-05','PU_CLERK',2600.00,0.00,114,30),
(119,'Karen','Colmenares','KCOLMENA','1987-07-06','PU_CLERK',2500.00,0.00,114,30),
(120,'Matthew','Weiss','MWEISS','1987-07-07','ST_MAN',8000.00,0.00,100,50),
(121,'Adam','Fripp','AFRIPP','1990-07-08','ST_MAN',8200.00,0.00,100,50),
(122,'Payam','Kaufling','PKAUFLIN','1987-07-09','ST_MAN',7900.00,0.00,100,50),
(123,'Shanta','Vollman','SVOLLMAN','1987-07-10','ST_MAN',6500.00,0.00,100,50),
(124,'Kevin','Mourgos','KMOURGOS','1997-07-11','ST_MAN',5800.00,0.00,100,50),
(125,'Julia','Nayer','JNAYER','1987-07-12','ST_CLERK',3200.00,0.00,120,50),
(126,'Irene','Mikkilineni','IMIKKILI','1987-07-13','ST_CLERK',2700.00,0.00,120,50),
(127,'James','Landry','JLANDRY','1978-07-14','ST_CLERK',2400.00,0.00,120,50),
(128,'Steven','Markle','SMARKLE','1987-07-15','ST_CLERK',2200.00,0.00,120,50),
(129,'Laura','Bissot','LBISSOT','1987-07-16','ST_CLERK',3300.00,0.00,121,50),
(130,'Mozhe','Atkinson','MATKINSO','1983-07-17','ST_CLERK',2800.00,0.00,121,50),
(131,'James','Marlow','JAMRLOW','1987-07-18','ST_CLERK',2500.00,0.00,121,50),
(132,'TJ','Olson','TJOLSON','1987-07-19','ST_CLERK',2100.00,0.00,121,50),
(133,'Jason','Mallin','JMALLIN','1985-07-20','ST_CLERK',3300.00,0.00,122,50),
(134,'Michael','Rogers','MROGERS','1987-07-21','ST_CLERK',2900.00,0.00,122,50),
(135,'Ki','Gee','KGEE','1987-07-22','ST_CLERK',2400.00,0.00,122,50),
(136,'Hazel','Philtanker','HPHILTAN','1990-07-23','ST_CLERK',2200.00,0.00,122,50),
(137,'Renske','Ladwig','RLADWIG','2000-07-24','ST_CLERK',3600.00,0.00,123,50),
(138,'Stephen','Stiles','SSTILES','1987-07-25','ST_CLERK',3200.00,0.00,123,50),
(139,'John','Seo','JSEO','1989-07-26','ST_CLERK',2700.00,0.00,123,50),
(140,'Joshua','Patel','JPATEL','2011-07-27','ST_CLERK',2500.00,0.00,123,50);

SELECT COUNT(*) FROM myemp;

SELECT * FROM myemp LIMIT 3;

SELECT first_name, last_name,job_id,salary FROM myemp LIMIT 5;

SELECT first_name, last_name,job_id,salary,salary*0.2 AS Bonus FROM myemp;

SELECT first_name, last_name,job_id,
salary,salary*0.2 AS Bonus,
salary+salary*0.2 AS Total_Salary FROM myemp;

SELECT * FROM myemp WHERE dep_id=50;

SELECT * FROM myemp WHERE mgr_id=100;

SELECT * FROM myemp WHERE salary <=10000;

SELECT first_name, last_name,job_id FROM myemp WHERE salary>10000;

SELECT * FROM myemp WHERE dep_id <> 70;

SELECT * FROM myemp WHERE hire_date >'1995-07-01';

SELECT * FROM myemp WHERE dep_id=50 AND salary >7000;

SELECT * FROM myemp WHERE dep_id=70 OR salary >10000;

SELECT * FROM myemp WHERE dep_id IN (20,40,60);

SELECT * FROM myemp WHERE salary BETWEEN 10000 AND 15000;

SELECT * FROM myemp WHERE first_name LIKE 'J%';

SELECT * FROM myemp WHERE first_name LIKE '%a';

SELECT * FROM myemp WHERE first_name LIKE 'J%a';

SELECT * FROM myemp WHERE first_name LIKE 'k____';

SELECT * FROM myemp WHERE first_name LIKE '% %';