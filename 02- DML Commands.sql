# DATA MANIPULATION LANGUAGE

CREATE DATABASE learndb;
USE learndb;

CREATE TABLE student(
std_id INT,
sname CHAR(30),
course CHAR(30),
marks INT DEFAULT 0
);

# INSERT command
INSERT INTO student VALUES (1,'Bhushan','SQL',78);
INSERT INTO student VALUES (2,'Apps','Python',86);
INSERT INTO student VALUES (3,'Parth','Stats',90);
INSERT INTO student VALUES (4,'Sam','Azure',84);
INSERT INTO student VALUES (5,'Tom','Analytics',null);

INSERT INTO student (std_id,sname,course) VALUES (6,'Tony','AI');
INSERT INTO student (std_id,sname,marks) VALUES (7,'Michel',85);

INSERT INTO student VALUES
(8,'Pepper','Music',79),
(9,'Scarlet','Magic',94),
(10,'Stephen','MBBS',98);

SET SQL_SAFE_UPDATES=0;

SELECT * FROM student;

# UPDATE command
UPDATE student SET sname = 'Thomsan' WHERE std_id = 5;
UPDATE student SET course = 'Cooking' WHERE sname='Pepper';
UPDATE student SET marks = 0 WHERE course IS NULL;
UPDATE student SET marks = 100 WHERE marks IS NULL;
UPDATE student SET course='ML',marks=82 WHERE sname = 'stephen';

SELECT * FROM student;

# DELETE command
DELETE FROM student WHERE sname='Michel';
DELETE FROM student WHERE course='AI';
DELETE FROM student WHERE std_id IN (2,4,5);