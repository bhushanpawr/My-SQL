# DATA DEFINITION LANGUAGE

# CREATE command
CREATE DATABASE learndb;
USE learndb;

CREATE TABLE students(
sid INT,
sname CHAR(30),
age INT,
course CHAR(30)
);

INSERT INTO students VALUES (1,'Bhushan',22,'SQL');
INSERT INTO students VALUES (2,'Apps',21,'Python');
INSERT INTO students VALUES (3,'Parth',18,'Stats');

SELECT * FROM students;

# ALTER command
ALTER TABLE students ADD COLUMN marks INT DEFAULT 0;
ALTER TABLE students DROP COLUMN age;
ALTER TABLE students CHANGE COLUMN sid std_id INT;
DESCRIBE students;
ALTER TABLE students MODIFY COLUMN sname VARCHAR(30);

# RENAME command
ALTER TABLE students RENAME TO myclass;
SELECT * FROM myclass;
RENAME TABLE myclass TO students;
SELECT * FROM students;

# DROP command
CREATE TABLE mytab(id INT,name VARCHAR(30));
DROP TABLE mytab;

# TRUNCATE command
TRUNCATE students;