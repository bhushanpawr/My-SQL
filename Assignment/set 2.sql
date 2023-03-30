# SET 2

-- Q1. select all employees in department 10 whose salary is greater than 3000. [table: employee]
SELECT * FROM employee WHERE deptno=10 AND Salary>3000;

-- Q2. The grading of students based on the marks they have obtained is done as follows:
/*			40 to 50 -> Third Class
			50 to 60 -> Second Class
			60 to 80 -> First Class
			80 to 100 -> Distinctions    */

ALTER TABLE students ADD COLUMN grade VARCHAR(20);

UPDATE students SET grade=CASE
WHEN marks > 80 THEN 'Distinction'
WHEN marks > 60 THEN 'First Class'
WHEN marks > 50 THEN 'Second Class'
WHEN marks > 40 THEN 'Third Class'
END;
SELECT * FROM students;

--     Q2a. How many students have graduated with first class?
SELECT COUNT(*) FROM students WHERE grade='first class';

--     Q2b. How many students have obtained distinction?
SELECT COUNT(*) FROM students WHERE grade = 'distinction';


-- Q3. Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer
SELECT * FROM station;
SELECT DISTINCT(city) FROM station WHERE id%2=0;

-- Q4. Find the difference between the total number of city entries in the table and the number of distinct city entries in the table. In other words,
--     if N is the number of city entries in station, and N1 is the number of distinct city names in station, write a query to find the value of N-N1 from station.

SELECT COUNT(city) - COUNT(DISTINCT(city)) AS Difference FROM station;

-- Q5. Answer the following
/*  a. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. [Hint: Use RIGHT() / LEFT() methods ]
	b. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
	c. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
	d. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. */

SELECT DISTINCT(city) FROM station WHERE LEFT(city,1) IN ('a','e','i','o','u');
SELECT DISTINCT(city) FROM station WHERE LEFT(city,1) IN ('a','e','i','o','u') AND RIGHT (city,1) IN ('a','e','i','o','u');
SELECT DISTINCT(city) FROM station WHERE LEFT(city,1) NOT IN ('a','e','i','o','u');
SELECT DISTINCT(city) FROM station WHERE LEFT(city,1) NOT IN ('a','e','i','o','u') AND RIGHT(city,1) NOT IN ('a','e','i','o','u');


-- Q6. Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employed for less than 36 months.
--     Sort your result by descending order of salary. [table: emp]
SELECT * FROM EMP;
SELECT CONCAT(first_name,' ',last_name) AS employee_name, hire_date,salary FROM emp WHERE salary > 2000 AND TIMESTAMPDIFF(MONTH,hire_date,Now())<36
ORDER BY salary DESC;

-- Q7. How much money does the company spend every month on salaries for each department? [table: employee]
/*			Expected Result
			----------------------
			+--------+--------------+
			| deptno | total_salary |
			+--------+--------------+
			|     10 |     20700.00 |
			|     20 |     12300.00 |
			|     30 |      1675.00 |
			+--------+--------------+
			3 rows in set (0.002 sec)   */

SELECT * FROM EMPLOYEE;
SELECT deptno, SUM(salary) AS total_salary FROM employee
GROUP BY deptno;


-- Q8. How many cities in the CITY table have a Population larger than 100000. [table: city]
SELECT * FROM city;
SELECT COUNT(name) AS 'Number of cities' FROM city WHERE population > 100000;


-- Q9. What is the total population of California? [table: city]
SELECT * FROM city;
SELECT district,SUM(population) AS Total_Population FROM city WHERE district = 'California';

-- Q10. What is the average population of the districts in each country? [table: city]
SELECT * FROM city;
SELECT countrycode,district,ROUND(AVG(population)) FROM city
GROUP BY district;

-- Q11. Find the ordernumber, status, customernumber, customername and comments for all orders that are ‘Disputed=  [table: orders, customers]
SELECT * FROM orders;
SELECT * FROM customers;

SELECT o.ordernumber, o.status, c.customernumber, c.customername, o.comments 
FROM orders AS O INNER JOIN customers AS c
USING(customerNumber)
WHERE status='Disputed';