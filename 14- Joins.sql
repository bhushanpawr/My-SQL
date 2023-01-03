# JOINS
/*
   [1] INNER JOIN
   [2] LEFT JOIN
   [3] RIGHT JOIN
   [4] FULL OUTER JOIN
   [5] SELF JOIN
   [6] CROSS JOIN
*/

CREATE DATABASE Joins;
USE Joins;

CREATE TABLE Cricket(
	Cricket_id INT AUTO_INCREMENT PRIMARY KEY,
	P_Name VARCHAR(30),
    Reporting_Person_ID INT
    );
INSERT INTO cricket (P_Name,Reporting_Person_ID) VALUES 
('Rohit',1),
('Virat',1),
('Hardik',2),
('Jasprit',3),
('Kuldeep',4);

CREATE TABLE Football(
	Football_id INT,
	P_Name VARCHAR(30)
    );
INSERT INTO football VALUES 
(6,'Mahendrasingh'),
(7,'Virat'),
(8,'Hardik'),
(9,'Kuldeep'),
(10,'Deepak');

SELECT * FROM cricket;
SELECT * FROM football;

# INNER JOIN

SELECT c.cricket_id,c.p_name,f.football_id,f.p_name 
FROM cricket AS c INNER JOIN football AS f
ON c.P_Name=f.P_Name;

# LEFT JOIN

SELECT c.cricket_id,c.p_name,f.football_id,f.p_name FROM 
cricket AS c LEFT JOIN football as f
ON c.P_Name=f.P_Name;

# RIGHT JOIN

SELECT c.cricket_id,c.p_name,f.football_id,f.p_name
FROM cricket AS c RIGHT JOIN football as f
ON c.P_Name=f.P_Name;

# FULL OUTER JOIN

SELECT c.cricket_id,c.p_name,f.football_id,f.p_name
FROM cricket AS c LEFT JOIN football as f
ON c.P_Name=f.P_Name
UNION
SELECT c.cricket_id,c.p_name,f.football_id,f.p_name
FROM cricket AS c RIGHT JOIN football as f
ON c.P_Name=f.P_Name;


# SELF JOIN

SELECT c.cricket_id,r.p_name AS Player_Name,c.p_name AS Reports_to 
FROM cricket AS c JOIN cricket AS r
ON r.Reporting_Person_ID=c.cricket_id;

# CROSS JOIN

CREATE TABLE Laptop (Laptop_name VARCHAR(10));
INSERT INTO Laptop VALUES('Dell'),('Lenovo'),('HP');

CREATE TABLE Colour (Colour_name VARCHAR(15));
INSERT INTO Colour VALUES('Black'),('Blue'),('Gray'),('Red');

SELECT * FROM Laptop;
SELECT * FROM Colour;

SELECT *
FROM Laptop CROSS JOIN Colour
ORDER BY Laptop.Laptop_Name;
