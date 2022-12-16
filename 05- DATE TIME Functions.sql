# Date Functions

SELECT NOW() AS result;
SELECT CURRENT_DATE() AS result;
SELECT CURDATE() AS result;
SELECT CURRENT_TIME() AS result;
SELECT CURTIME() AS result;


SELECT YEAR(NOW()) AS result;
SELECT MONTH(NOW()) AS result;
SELECT MONTHNAME(NOW()) AS result;
SELECT DAY(NOW()) AS result;
SELECT DAYNAME(NOW()) AS result;
SELECT QUARTER(NOW()) AS result;
SELECT WEEK(NOW()) AS result;
SELECT WEEKDAY(NOW()) AS result;
SELECT HOUR(NOW()) AS result;
SELECT MINUTE(NOW()) AS result;
SELECT SECOND(NOW()) AS result;
 

SELECT DATE('2022-02-14 14:30:00') AS result;
SELECT TIME('2022-02-14 14:30:00') AS result;

SELECT TIMESTAMPDIFF(YEAR,"2022-02-14","2029-06-18") AS result;
SELECT TIMESTAMPDIFF(MONTH,"2022-02-14","2029-06-18") AS result;
SELECT TIMESTAMPDIFF(DAY,"2022-02-14","2029-06-18") AS result;
SELECT TIMESTAMPDIFF(MINUTE,"2022-02-14","2029-06-18") AS result;


CREATE DATABASE datefunction;
USE datefunction;
CREATE TABLE emp_info(
  emp_id INT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  hire_date DATE
);

INSERT INTO emp_info VALUES  
(1,'Joshua','Patel','2011-07-27'),
(2,'Trenna','Rajs','1984-07-28'),
(3,'Curtis','Davies','1989-07-29'),
(4,'Randall','Matos','1980-07-30'),
(5,'Peter','Vargas','1998-07-31'),
(6,'John','Russell','1991-08-01'),
(7,'Karen','Partners','2019-08-02'),
(8,'Alberto','Errazuriz','1987-08-03'),
(9,'Gerald','Cambrault','2015-08-04'),
(10,'Eleni','Zlotkey','1982-08-05'),
(11,'Peter','Tucker','1999-08-06'),
(12,'David','Bernstein','2013-08-07'),
(13,'Peter','Hall','1983-08-08'),
(14,'Christopher','Olsen','1979-08-09'),
(15,'Nanette','Cambrault','1988-08-10'),
(16,'Oliver','Tuvault','1992-08-11'),
(17,'Janette','King','1994-08-12'),
(18,'Patrick','Sully','2002-08-13'),
(19,'Allan','McEwen','1986-08-14'),
(20,'Lindsey','Smith','1999-08-15');
SELECT * FROM emp_info;

#YEAR()
SELECT emp_id ,hire_date,YEAR(hire_date) FROM emp_info;

#MONTH()
SELECT emp_id ,hire_date,MONTH(hire_date) FROM emp_info;

#MONTHNAME()
SELECT emp_id ,hire_date,MONTHNAME(hire_date) FROM emp_info;

#DAY()
SELECT emp_id ,hire_date,DAY(hire_date) FROM emp_info;

#DAYNAME
SELECT emp_id ,hire_date,DAYNAME(hire_date) FROM emp_info;

#WEEK
SELECT emp_id ,hire_date,WEEK(hire_date) FROM emp_info;

#WEEKDAY
SELECT emp_id ,hire_date,WEEKDAY(hire_date) FROM emp_info;



#EXTRACT
SELECT EXTRACT(YEAR FROM hire_date) AS hire_day FROM emp_info ;

SELECT EXTRACT(YEAR FROM hire_Date) AS hire_Year,
       EXTRACT(MONTH FROM hire_Date) AS hire_Month,
       EXTRACT(DAY FROM hire_Date) AS hire_Day
FROM emp_info
WHERE emp_id=14;

#DATE_ADD -
SELECT emp_id,hire_date,DATE_ADD(hire_date ,INTERVAL 30 DAY) AS join_date FROM emp_info;

SELECT NOW(),DATE_ADD(NOW(),INTERVAL 30 MINUTE) AS Alarm;

#DATE_SUB
SELECT emp_id,hire_date,DATE_SUB(hire_date,INTERVAL 5 HOUR) AS subtract_date FROM emp_info;

SELECT emp_id,hire_date,DATE_SUB(hire_date,INTERVAL 4 SECOND) AS subtract_month FROM emp_info;