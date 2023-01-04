# ORDERBY GROUPBY

CREATE DATABASE orderby;
USE orderby;

CREATE TABLE myemp (
  EMP_ID DECIMAL(6,0) NOT NULL,
  FIRST_NAME VARCHAR(20) DEFAULT NULL,
  LAST_NAME VARCHAR(25) NOT NULL,
  EMAIL VARCHAR(25) NOT NULL,
  HIRE_DATE DATE NOT NULL,
  JOB_ID VARCHAR(10) NOT NULL,
  SALARY DECIMAL(8,2) DEFAULT NULL,
  MGR_ID DECIMAL(6,0) DEFAULT NULL,
  DEP_ID DECIMAL(4,0) DEFAULT NULL
) ;

INSERT INTO myemp VALUES
(181,'Jean','Fleaur','JFLEAUR','1987-09-06','SH_CLERK',3100.00,120,50),
(182,'Martha','Sullivan','MSULLIVA','1987-09-07','SH_CLERK',2500.00,120,60),
(183,'Girard','Geoni','GGEONI','1987-09-08','SH_CLERK',2800.00,120,70),
(184,'Nandita','Sarchand','NSARCHAN','2012-09-09','SH_CLERK',4200.00,121,50),
(185,'Alexis','Bull','ABULL','1987-09-10','SH_CLERK',4100.00,121,90),
(186,'Julia','Dellinger','JDELLING','1987-09-11','SH_CLERK',3400.00,121,30),
(187,'Anthony','Cabrio','ACABRIO','2007-09-12','SH_CLERK',3000.00,121,20),
(188,'Kelly','Chung','KCHUNG','1987-09-13','SH_CLERK',3800.00,122,90),
(189,'Jennifer','Dilly','JDILLY','1987-09-14','SH_CLERK',3600.00,122,60),
(190,'Timothy','Gates','TGATES','1987-09-15','SH_CLERK',2900.00,122,40),
(191,'Randall','Perkins','RPERKINS','1987-09-16','SH_CLERK',2500.00,122,80),
(192,'Sarah','Bell','SBELL','1987-09-17','SH_CLERK',4000.00,123,80),
(193,'Britney','Everett','BEVERETT','1987-09-18','SH_CLERK',3900.00,123,60),
(194,'Samuel','McCain','SMCCAIN','2000-09-19','SH_CLERK',3200.00,123,80),
(195,'Vance','Jones','VJONES','1996-09-20','SH_CLERK',2800.00,123,50),
(196,'Alana','Walsh','AWALSH','1987-09-21','SH_CLERK',3100.00,124,90),
(197,'Kevin','Feeney','KFEENEY','1987-09-22','SH_CLERK',3000.00,124,80),
(198,'Donald','OConnell','DOCONNEL','1997-09-23','SH_CLERK',2600.00,124,30),
(199,'Douglas','Grant','DGRANT','1987-09-24','SH_CLERK',2600.00,124,50),
(200,'Jennifer','Whalen','JWHALEN','1988-09-25','AD_ASST',4400.00,101,10),
(201,'Michael','Hartstein','MHARTSTE','1987-09-26','MK_MAN',13000.00,100,20),
(202,'Pat','Fay','PFAY','1987-09-27','MK_REP',6000.00,101,20),
(203,'Susan','Mavris','SMAVRIS','1989-09-28','HR_REP',6500.00,101,40),
(204,'Hermann','Baer','HBAER','1987-09-29','PR_REP',10000.00,101,30),
(205,'Shelley','Higgins','SHIGGINS','1987-09-30','AC_MGR',12000.00,101,10);

SELECT * FROM myemp;

SELECT dep_id, avg(Salary) FROM myemp
GROUP BY dep_id
ORDER BY dep_id;

SELECT dep_id, mgr_id, AVG(salary) FROM  myemp
GROUP BY dep_id, mgr_id
ORDER BY dep_id;

SELECT emp_id, dep_id, avg(Salary),hire_date FROM myemp
WHERE YEAR(hire_date) > 1988
GROUP BY dep_id
ORDER BY dep_id;

SELECT emp_id, first_name, last_name,hire_date, MAX(Salary), dep_id FROM myemp
GROUP BY dep_id
HAVING YEAR(hire_date)=1987
ORDER BY dep_id DESC;

SELECT emp_id, first_name, last_name, hire_date, MIN(Salary), dep_id, mgr_id FROM myemp
WHERE YEAR(hire_date)>1990
GROUP BY dep_id
HAVING emp_id > 190 
ORDER BY dep_id DESC;

SELECT dep_id, first_name, last_name, mgr_id, MAX(salary), hire_date FROM  myemp
GROUP BY dep_id, mgr_id
HAVING dep_id IN (50,60) AND YEAR(hire_date) < 1995
ORDER BY dep_id;