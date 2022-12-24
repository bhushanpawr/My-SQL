#3] Logical Operator
/*
	AND           [ It compares a value to all values in another value set. ] 
	IN            [ It compares a value to that specified list value. ] 
	NOT           [ It reverses the meaning of any logical operator ] 
	OR            [ It combines multiple conditions in SQL statements. ] 
	LIKE          [ It is used to search for the presence of a row in a specified table. ]  
	BETWEEN       [ It is used to search for values that are within a set of values. ] 
	ALL           [ It compares a value to all values in another value set. ]  
	ANY           [ It compares the values in the list according to the condition ] 
	EXISTS        [ It is used to search for the presence of a row in a specified table. ] 
	*/

CREATE DATABASE Logical;
USE Logical;
CREATE TABLE Ipl2022(
IPL_rank INT,
Team_Name VARCHAR(30),
Team_ID VARCHAR(5),
Player_Name VARCHAR(20),
Runs INT 
);

INSERT INTO Ipl2022 VALUES
( 1,"Rajasthan Royals","RR", "Jos Buttler", 863),
( 2,"Lucknow Super Giants","LSG", "Lokesh Rahul", 616 ),
( 3,"Lucknow Super Giants","LSG", "Quinton De Kock", 508 ),
( 4,"Gujrat Titans","GT", "Hardik Pandya", 487 ),
( 5,"Gujrat Titans",null, "Shubhman Gill", 483 ),
( 6,"Gujrat Titans","GT", "David Miller", 481 ),
( 7,"Royal Challegers Bangaluru","RCB", "Faf Du Plessis", 468 ),
( 8,null,"PK", "Shikhar Dhawan", 460 ),
( 9,"Rajasthan Royals","RR", "Sanju Samson", 458 ),
( 10,"Lucknow Super Giants","LSG", "Deepak Hooda", 451 ),
( 11,"Punjab Kings",null, "Liam Livingstone", 437 ),
( 12,"Delhi Capitals","DC", "David Warner", 432 ),
( 13,"Sunrisers Hyderabad","SH", "Abhishek Sharma", 426 ),
( 14,"Mumbai Indians","MI", "Ishan Kishan", 418 ),
( 15,null,"SH", "Rahul Tripathi", 413 ),
( 16,"Kolkatta Knight Riders",null, "Sheyas Iyer", 401 ),
( 17,"Mumbai Indians","MI", "Tilak Varma", 397 ),
( 18,"Sunrisers Hyderabad","SH", "Aiden Markram", 381 ),
( 19,null,"RR", "Devdutt Padikkal", 376 ),
( 20,"Chennai Super Kings","CSK", "Ruturaj Gaikwad", 368);
SELECT * FROM Ipl2022;

CREATE TABLE Player_info(
rank_ipl INT,
Player_Name VARCHAR(20),
Country_of_Player VARCHAR(30),
Followers_in_Million DECIMAL(4,2) 
);
INSERT INTO Player_info VALUES
(1,'Jos Buttler','England',2.4),
(2,'Lokesh Rahul','India',13.4),
(4,'Hardik Pandya','India',24.4),
(7,'Faf Du Plessis','South Africa',2.9),
(14,'Ishan Kishan','India',3.1),
(20,'Ruturaj Gaikwad','India',1.5),
(25,'Rajat Patidar','India',0.40),
(29,'Nicolas Pooran','West Indis',0.56),
(32,'Shivam Dube','India',0.65),
(37,'Jonny Bairstow','West Indis',0.82);
SELECT * FROM player_info;

# AND
SELECT * FROM Ipl2022 WHERE Team_ID ="LSG" AND Runs > 500;
SELECT * FROM Ipl2022 WHERE Runs < 600 AND IPL_rank <= 5;

# OR
SELECT * FROM Ipl2022 WHERE Team_Name ="Rajasthan Royals" OR Runs > 600;

# LIKE
SELECT Team_name, Player_name FROM Ipl2022 WHERE Team_name LIKE "R%";
SELECT Team_name, Player_name FROM Ipl2022 WHERE Team_name LIKE "%b%";
SELECT Team_name, Player_name FROM Ipl2022 WHERE Team_name LIKE "%s";
SELECT Team_name, Player_name FROM Ipl2022 WHERE Team_name LIKE "% t%";
SELECT Team_name, Player_name FROM Ipl2022 WHERE Team_name LIKE "M%s";
SELECT runs, Team_id, Player_name FROM Ipl2022 WHERE Player_name LIKE "d%";
SELECT runs, Team_id, Player_name FROM Ipl2022 WHERE Player_name LIKE "_o%";

# NOT LIKE
SELECT runs, Team_id, Player_name FROM Ipl2022 WHERE Player_name NOT LIKE "%a%";
SELECT runs, Team_id, Player_name FROM Ipl2022 WHERE Player_name NOT LIKE "s%";
SELECT runs, Team_id, Player_name FROM Ipl2022 WHERE Player_name NOT LIKE "_a%";

# IN 
SELECT IPL_rank,player_name,team_id FROM Ipl2022 WHERE Team_Name IN ("Mumbai Indians","Chennai Super Kings");

# NOT IN
SELECT IPL_rank,player_name,team_id FROM Ipl2022 WHERE Team_ID NOT IN ("RR","RCB","GT","KKR");

# ANY
SELECT IPL_rank, Team_name, Player_name,runs FROM Ipl2022
WHERE runs = ANY (SELECT runs FROM Ipl2022 WHERE ipl_rank <= 5);

SELECT Player_name FROM Ipl2022
WHERE IPL_rank = ANY (SELECT rank_ipl FROM player_info WHERE Followers_in_Million = 24.40);

SELECT rank_ipl, Player_name,country_of_player FROM Player_info
WHERE rank_ipl = ANY (SELECT IPL_rank FROM ipl2022 WHERE runs > 550);

# BETWEEN
SELECT IPL_rank,player_name,team_id, runs FROM Ipl2022
WHERE runs BETWEEN 500 AND 700;

SELECT IPL_rank,player_name,team_id, runs FROM Ipl2022
WHERE IPL_rank BETWEEN 1 AND 7;

# ALL
SELECT ipl_rank, Team_name, Player_name,runs FROM Ipl2022 
WHERE runs = ALL (SELECT runs FROM Ipl2022 WHERE ipl_rank = 20);

SELECT ipl_rank, player_name FROM ipl2022
WHERE ipl_rank = ALL(select rank_ipl from player_info WHERE Country_of_Player = 'India');

# EXISTS
SELECT team_name,player_name FROM ipl2022
WHERE EXISTS
(SELECT * FROM player_info WHERE ipl2022.ipl_rank = player_info.rank_ipl);

SELECT ipl_rank, team_name, player_name FROM ipl2022 
WHERE EXISTS
(SELECT * FROM player_info WHERE ipl2022.player_name = player_info.player_name);

# IS NULL
SELECT * FROM ipl2022 WHERE team_name IS NULL;
SELECT * FROM ipl2022 WHERE team_id IS NULL;

# IS NOT NULL
SELECT * FROM ipl2022 WHERE team_name IS NOT NULL;
SELECT * FROM ipl2022 WHERE team_id IS NOT NULL;