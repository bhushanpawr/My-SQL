# STRING FUNCTIONS

SELECT CHAR_LENGTH('India') AS result;                                          # Length of character
SELECT CONCAT('The Polulation of India is ',140,' crores') AS result;           # Join the strings
SELECT CONCAT_WS('&','a','b','c','d,') AS result;                               # Concate strings by using concatinating symbol
SELECT LOWER ('My Name is Bhushan') AS result;                                  # Lowercase
SELECT UPPER ('My Name is Bhushan') AS result;                                  # Uppercase

SELECT LEFT('United States of America',13) AS result;                                    # Left string
SELECT LEFT('United States of America',CHAR_LENGTH('United States')) AS result;          # Left string with char length
SELECT RIGHT('United States of America',CHAR_LENGTH('AMERICA')) AS result;               # Right string with char length
SELECT MID('United States of America',7,10) AS result;                                   # Middle string with start num and char length

SELECT FIND_IN_SET('b','a,b,c') AS result;                           # Search for Index Position of a character
SELECT LPAD('Hopes',7,"#$" ) AS Lpad FROM Books;                     #left-pads a string with another string upto certain length.
SELECT RPAD('Hopes',8,"#$" ) AS Lpad FROM Books;                     #right-pads a string with another string upto certain length.


SELECT TRIM('   Hi   Bh   u  shan   !!!     ') AS result;                       # Only remove spaces of left and right side
SELECT REPLACE('   Hi   Bh   u  shan   !!!     ',' ','') AS result;             # Replace any character

SELECT SUBSTRING('www.twitter.com',5) AS result;               # return a string by using +ve start num(left to right)
SELECT SUBSTRING('www.twitter.com',-3) AS result;              # return a string by using -ve start num(right to left)
SELECT SUBSTRING('www.twitter.com',5,7) AS result;             # return a string by using +ve start num and number of characters
SELECT SUBSTRING('www.twitter.com',-11,7) AS result;           # return a string by using -ve start num and number of characters

SELECT SUBSTRING_INDEX('www.twitter.com','.',1) AS result;     # separate a string by using position delimiter
SELECT SUBSTRING_INDEX('www.twitter.com','.',2) AS result;
SELECT SUBSTRING_INDEX('www.twitter.com','.',-1) AS result;
SELECT SUBSTRING_INDEX('www.twitter.com','.',-2) AS result;


CREATE DATABASE stringfunctions;
USE stringfunctions;

CREATE TABLE Books(
             BookId INT,
             Title VARCHAR(50),
             Sales INT
             );

INSERT INTO Books VALUES(1,'Harry Potter and the Philosopher\'s Stone',1000);
INSERT INTO Books VALUES(2,'Harry Potter and the Chamber of Secrets',1200);
INSERT INTO Books VALUES(3,'Harry Potter and the Half-Blood Prince',1400);
INSERT INTO Books VALUES(4,'Harry Potter and the Goblet of Fire',900);
INSERT INTO Books VALUES(5,'Night Without End',1200);
INSERT INTO Books VALUES(6,'Fear is the Key',1800);
INSERT INTO Books VALUES(7,'Where Eagles Dare',1300);
INSERT INTO Books VALUES(8,'Sense and Sensibility',1400);
INSERT INTO Books VALUES(9,'Pride and Prejudice',1700);
INSERT INTO Books VALUES(10,'Five Point Someone',1500);

SELECT * FROM Books;

SELECT bookid,CHAR_LENGTH(bookid) AS Char_length FROM books;
SELECT Title,CHAR_LENGTH(title) AS Char_length FROM books;
SELECT Title,CHARACTER_LENGTH(title) AS Char_length FROM books;


SELECT CONCAT(Bookid,' - ',Title) AS New_ID FROM books;
SELECT CONCAT(Bookid,'@',Title) AS New_ID FROM books;

SELECT CONCAT_WS('--',Bookid,Title,Sales) AS concat_ws FROM books;
SELECT CONCAT_WS(' zzzzz ',Bookid,Title,Sales) AS concat_ws FROM books;

SELECT Bookid, Title, LOWER(title) AS Lowercase FROM books;
SELECT Bookid, Title, LCASE(title) AS Lowercase FROM books;

SELECT Bookid, Title, UPPER(title) AS Uppercase FROM books;
SELECT Bookid, Title, UCASE(title) AS Uppercase FROM books;

SELECT Bookid, Title, LEFT( title,5) AS left_str FROM books;
SELECT Bookid, Title, LEFT( title,10) AS left_str FROM books;

SELECT Bookid, Title, RIGHT( title,10) AS right_str FROM books;
SELECT Bookid, Title, RIGHT( title,23) AS right_str FROM books;

SELECT Title, FIND_IN_SET('Sense and Sensibility',title) AS Find FROM books;
SELECT Bookid, FIND_IN_SET(6,bookid) AS Find FROM books;

SELECT Title, Position('e' IN Title) AS Pstn_ttl FROM Books;
SELECT Title, Position('a' IN Title) AS Pstn_ttl FROM Books;

SELECT Title, TRIM("Harry" FROM Title) AS Trim_ttl FROM Books;
SELECT Sales, TRIM("1200" FROM Sales) AS Trim_ttl FROM Books;

SELECT LPAD(Bookid,3,"#0" ) AS Lpad FROM Books;
SELECT LPAD(Sales,6,"$00" ) AS Lpad FROM Books;


SELECT Bookid,Title, REPLACE(title," "," - ") AS Replace_ttl FROM books;
SELECT Bookid,Title, REPLACE(title,"a","@") AS Replace_ttl FROM books;
SELECT Bookid,Title, REPLACE(title,"and","&") AS Replace_ttl FROM books;

SELECT Bookid, Title, SUBSTRING( title,7) AS sub_str FROM books;
SELECT Bookid, Title, SUBSTRING( title,-7) AS sub_str FROM books;
SELECT Bookid, Title, SUBSTRING( title,4,10) AS sub_str FROM books;
SELECT Bookid, Title, SUBSTRING( title,-11,8) AS sub_str FROM books;

SELECT Bookid, Title, SUBSTRING_INDEX( title," ",1) AS sub_str FROM books;
SELECT Bookid, Title, SUBSTRING_INDEX( title," ",3) AS sub_str FROM books;
SELECT Bookid, Title, SUBSTRING_INDEX( title," ",5) AS sub_str FROM books;