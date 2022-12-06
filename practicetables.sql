DROP TABLE IF EXISTS `books`;
DROP TABLE IF EXISTS `authors`;


CREATE TABLE Authors(AuthorId INTEGER primary key, 
                                Name VARCHAR(70));

insert into Authors values(1,'J K Rowling');
insert into Authors values(2,'Thomas Hardy');
insert into Authors values(3,'Oscar Wilde');
insert into Authors values(4,'Sidney Sheldon');
insert into Authors values(5,'Alistair MacLean');
insert into Authors values(6,'Jane Austen');
insert into Authors values(7,'Chetan Bhagat');
insert into Authors values(8,'Oscar Wilde');

DROP TABLE IF EXISTS `books`;


CREATE TABLE Books(
             BookId INTEGER primary key, 
             Title VARCHAR(50),
             AuthorId INTEGER, foreign key (authorid) references authors(authorid));


insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);

insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);

insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Five Point Someone',7);
insert into Books values(12,'Two States',7);
insert into Books values(13,'Salome',8);
insert into Books values(14,'The Happy Prince',8);

DROP TABLE IF EXISTS `drinks`;

CREATE TABLE `drinks` (
  `drinkname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;


INSERT INTO `drinks` VALUES ('Tea',5.00),('Coffee',15.00),('Pepsi',20.00);



DROP TABLE IF EXISTS `meals`;

CREATE TABLE `meals` (
  `mealname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;

INSERT INTO `meals` VALUES ('Omlet',10.50),('Sausage',15.50),('Pancake',40.75);

DROP TABLE IF EXISTS `movies`;


create table movies (id integer, title varchar(50), category varchar(25));

insert into movies values(1,	'ASSASSIN\'S CREED: EMBERS',	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');

DROP TABLE IF EXISTS `members`;

create table members(memid integer, first_name varchar(25), last_name varchar(25), movieid integer);



insert into members values(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);

DROP TABLE IF EXISTS `person`;

create table person(id integer, fname varchar(20), lname varchar(20));
insert into person values(1,'John','Perry'),(2,'John','Peters'),(3,'John','England'),(4, 'Tom', 'England'),(5,'Tom','Cruise'),(6,'Tom','Cruise'),(7,'John','Peters');


DROP TABLE IF EXISTS `myemp`;

CREATE TABLE `myemp` (
  `EMP_ID` decimal(6,0) NOT NULL DEFAULT 0,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MGR_ID` decimal(6,0) DEFAULT NULL,
  `DEP_ID` decimal(4,0) DEFAULT NULL
) ;


INSERT INTO `myemp` VALUES (100,'Steven','King','SKING','1998-06-17','AD_PRES',24000.00,0.00,0,90),
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
(140,'Joshua','Patel','JPATEL','2011-07-27','ST_CLERK',2500.00,0.00,123,50),
(141,'Trenna','Rajs','TRAJS','1987-07-28','ST_CLERK',3500.00,0.00,124,50),
(142,'Curtis','Davies','CDAVIES','1986-07-29','ST_CLERK',3100.00,0.00,124,50),
(143,'Randall','Matos','RMATOS','1987-07-30','ST_CLERK',2600.00,0.00,124,50),
(144,'Peter','Vargas','PVARGAS','1998-07-31','ST_CLERK',2500.00,0.00,124,50),
(145,'John','Russell','JRUSSEL','1991-08-01','SA_MAN',14000.00,0.40,100,80),
(146,'Karen','Partners','KPARTNER','2019-08-02','SA_MAN',13500.00,0.30,100,80),
(147,'Alberto','Errazuriz','AERRAZUR','1987-08-03','SA_MAN',12000.00,0.30,100,80),
(148,'Gerald','Cambrault','GCAMBRAU','2015-08-04','SA_MAN',11000.00,0.30,100,80),
(149,'Eleni','Zlotkey','EZLOTKEY','1987-08-05','SA_MAN',10500.00,0.20,100,80),
(150,'Peter','Tucker','PTUCKER','1987-08-06','SA_REP',10000.00,0.30,145,80),
(151,'David','Bernstein','DBERNSTE','2013-08-07','SA_REP',9500.00,0.25,145,80),
(152,'Peter','Hall','PHALL','1987-08-08','SA_REP',9000.00,0.25,145,80),
(153,'Christopher','Olsen','COLSEN','1987-08-09','SA_REP',8000.00,0.20,145,80),
(154,'Nanette','Cambrault','NCAMBRAU','1987-08-10','SA_REP',7500.00,0.20,145,80),
(155,'Oliver','Tuvault','OTUVAULT','1987-08-11','SA_REP',7000.00,0.15,145,80),
(156,'Janette','King','JKING','1987-08-12','SA_REP',10000.00,0.35,146,80),
(157,'Patrick','Sully','PSULLY','2002-08-13','SA_REP',9500.00,0.35,146,80),
(158,'Allan','McEwen','AMCEWEN','1987-08-14','SA_REP',9000.00,0.35,146,80),
(159,'Lindsey','Smith','LSMITH','1987-08-15','SA_REP',8000.00,0.30,146,80),
(160,'Louise','Doran','LDORAN','2003-08-16','SA_REP',7500.00,0.30,146,80),
(161,'Sarath','Sewall','SSEWALL','1987-08-17','SA_REP',7000.00,0.25,146,80),
(162,'Clara','Vishney','CVISHNEY','1987-08-18','SA_REP',10500.00,0.25,147,80),
(163,'Danielle','Greene','DGREENE','1987-08-19','SA_REP',9500.00,0.15,147,80),
(164,'Mattea','Marvins','MMARVINS','2007-08-20','SA_REP',7200.00,0.10,147,80),
(165,'David','Lee','DLEE','1987-08-21','SA_REP',6800.00,0.10,147,80),
(166,'Sundar','Ande','SANDE','1987-08-22','SA_REP',6400.00,0.10,147,80),
(167,'Amit','Banda','ABANDA','1987-08-23','SA_REP',6200.00,0.10,147,80),
(168,'Lisa','Ozer','LOZER','1987-08-24','SA_REP',11500.00,0.25,148,80),
(169,'Harrison','Bloom','HBLOOM','1999-08-25','SA_REP',10000.00,0.20,148,80),
(170,'Tayler','Fox','TFOX','1987-08-26','SA_REP',9600.00,0.20,148,80),
(171,'William','Smith','WSMITH','1987-08-27','SA_REP',7400.00,0.15,148,80),
(172,'Elizabeth','Bates','EBATES','1987-08-28','SA_REP',7300.00,0.15,148,80),
(173,'Sundita','Kumar','SKUMAR','1987-08-29','SA_REP',6100.00,0.10,148,80),
(174,'Ellen','Abel','EABEL','1987-08-30','SA_REP',11000.00,0.30,149,80),
(175,'Alyssa','Hutton','AHUTTON','1996-08-31','SA_REP',8800.00,0.25,149,80),
(176,'Jonathon','Taylor','JTAYLOR','1987-09-01','SA_REP',8600.00,0.20,149,80),
(177,'Jack','Livingston','JLIVINGS','1987-09-02','SA_REP',8400.00,0.20,149,80),
(179,'Charles','Johnson','CJOHNSON','1999-09-04','SA_REP',6200.00,0.10,149,80),
(180,'Winston','Taylor','WTAYLOR','1987-09-05','SH_CLERK',3200.00,0.00,120,50),
(181,'Jean','Fleaur','JFLEAUR','1987-09-06','SH_CLERK',3100.00,0.00,120,50),
(182,'Martha','Sullivan','MSULLIVA','1987-09-07','SH_CLERK',2500.00,0.00,120,50),
(183,'Girard','Geoni','GGEONI','1987-09-08','SH_CLERK',2800.00,0.00,120,50),
(184,'Nandita','Sarchand','NSARCHAN','2012-09-09','SH_CLERK',4200.00,0.00,121,50),
(185,'Alexis','Bull','ABULL','1987-09-10','SH_CLERK',4100.00,0.00,121,50),
(186,'Julia','Dellinger','JDELLING','1987-09-11','SH_CLERK',3400.00,0.00,121,50),
(187,'Anthony','Cabrio','ACABRIO','2007-09-12','SH_CLERK',3000.00,0.00,121,50),
(188,'Kelly','Chung','KCHUNG','1987-09-13','SH_CLERK',3800.00,0.00,122,50),
(189,'Jennifer','Dilly','JDILLY','1987-09-14','SH_CLERK',3600.00,0.00,122,50),
(190,'Timothy','Gates','TGATES','1987-09-15','SH_CLERK',2900.00,0.00,122,50),
(191,'Randall','Perkins','RPERKINS','1987-09-16','SH_CLERK',2500.00,0.00,122,50),
(192,'Sarah','Bell','SBELL','1987-09-17','SH_CLERK',4000.00,0.00,123,50),
(193,'Britney','Everett','BEVERETT','1987-09-18','SH_CLERK',3900.00,0.00,123,50),
(194,'Samuel','McCain','SMCCAIN','2000-09-19','SH_CLERK',3200.00,0.00,123,50),
(195,'Vance','Jones','VJONES','1996-09-20','SH_CLERK',2800.00,0.00,123,50),
(196,'Alana','Walsh','AWALSH','1987-09-21','SH_CLERK',3100.00,0.00,124,50),
(197,'Kevin','Feeney','KFEENEY','1987-09-22','SH_CLERK',3000.00,0.00,124,50),
(198,'Donald','OConnell','DOCONNEL','1997-09-23','SH_CLERK',2600.00,0.00,124,50),
(199,'Douglas','Grant','DGRANT','1987-09-24','SH_CLERK',2600.00,0.00,124,50),
(200,'Jennifer','Whalen','JWHALEN','1988-09-25','AD_ASST',4400.00,0.00,101,10),
(201,'Michael','Hartstein','MHARTSTE','1987-09-26','MK_MAN',13000.00,0.00,100,20),
(202,'Pat','Fay','PFAY','1987-09-27','MK_REP',6000.00,0.00,201,20),
(203,'Susan','Mavris','SMAVRIS','1989-09-28','HR_REP',6500.00,0.00,101,40),
(204,'Hermann','Baer','HBAER','1987-09-29','PR_REP',10000.00,0.00,101,70),
(205,'Shelley','Higgins','SHIGGINS','1987-09-30','AC_MGR',12000.00,0.00,101,110),
(206,'William','Gietz','WGIETZ','1997-10-01','AC_ACCOUNT',8300.00,0.00,205,110);

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `pcode` varchar(15) DEFAULT NULL,
  `pname` varchar(70) DEFAULT NULL,
  `productLine` varchar(50) NOT NULL,
  `pvendor` varchar(50) DEFAULT NULL,
  `qtyInStock` smallint(6) DEFAULT NULL,
  `MRP` decimal(7,2) DEFAULT NULL
) ;

INSERT INTO `products` VALUES ('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','Min Lin Diecast',7933,95.70),('S10_1949','1952 Alpine Renault 1300','Classic Cars','Classic Metal Creations',7305,214.30),('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','Highway 66 Mini Classics',6625,118.94),('S10_4698','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','Red Start Diecast',5582,193.66),('S10_4757','1972 Alfa Romeo GTA','Classic Cars','Motor City Art Classics',3252,136.00),('S10_4962','1962 LanciaA Delta 16V','Classic Cars','Second Gear Diecast',6791,147.74),('S12_1099','1968 Ford Mustang','Classic Cars','Autoart Studio Design',68,194.57),('S12_1108','2001 Ferrari Enzo','Classic Cars','Second Gear Diecast',3619,207.80),('S12_1666','1958 Setra Bus','Trucks and Buses','Welly Diecast Productions',1579,136.67),('S12_2823','2002 Suzuki XREO','Motorcycles','Unimax Art Galleries',9997,150.62),('S12_3148','1969 Corvair Monza','Classic Cars','Welly Diecast Productions',6906,151.08),('S12_3380','1968 Dodge Charger','Classic Cars','Welly Diecast Productions',9123,117.44),('S12_3891','1969 Ford Falcon','Classic Cars','Second Gear Diecast',1049,173.02),('S12_3990','1970 Plymouth Hemi Cuda','Classic Cars','Studio M Art Models',5663,79.80),('S12_4473','1957 Chevy Pickup','Trucks and Buses','Exoto Designs',6125,118.50),('S12_4675','1969 Dodge Charger','Classic Cars','Welly Diecast Productions',7323,115.16),('S18_1097','1940 Ford Pickup Truck','Trucks and Buses','Studio M Art Models',2613,116.67),('S18_1129','1993 Mazda RX-7','Classic Cars','Highway 66 Mini Classics',3975,141.54),('S18_1342','1937 Lincoln Berline','Vintage Cars','Motor City Art Classics',8693,102.74),('S18_1367','1936 Mercedes-Benz 500K Special Roadster','Vintage Cars','Studio M Art Models',8635,53.91),('S18_1589','1965 Aston Martin DB5','Classic Cars','Classic Metal Creations',9042,124.44),('S18_1662','1980s Black Hawk Helicopter','Planes','Red Start Diecast',5330,157.69),('S18_1749','1917 Grand Touring Sedan','Vintage Cars','Welly Diecast Productions',2724,170.00),('S18_1889','1948 Porsche 356-A Roadster','Classic Cars','Gearbox Collectibles',8826,77.00),('S18_1984','1995 Honda Civic','Classic Cars','Min Lin Diecast',9772,142.25),('S18_2238','1998 Chrysler Plymouth Prowler','Classic Cars','Gearbox Collectibles',4724,163.73),('S18_2248','1911 Ford Town Car','Vintage Cars','Motor City Art Classics',540,60.54),('S18_2319','1964 Mercedes Tour Bus','Trucks and Buses','Unimax Art Galleries',8258,122.73),('S18_2325','1932 Model A Ford J-Coupe','Vintage Cars','Autoart Studio Design',9354,127.13),('S18_2432','1926 Ford Fire Engine','Trucks and Buses','Carousel DieCast Legends',2018,60.77),('S18_2581','P-51-D Mustang','Planes','Gearbox Collectibles',992,84.48),('S18_2625','1936 Harley Davidson El Knucklehead','Motorcycles','Welly Diecast Productions',4357,60.57),('S18_2795','1928 Mercedes-Benz SSK','Vintage Cars','Gearbox Collectibles',548,168.75),('S18_2870','1999 Indy 500 Monte Carlo SS','Classic Cars','Red Start Diecast',8164,132.00),('S18_2949','1913 Ford Model T Speedster','Vintage Cars','Carousel DieCast Legends',4189,101.31),('S18_2957','1934 Ford V8 Coupe','Vintage Cars','Min Lin Diecast',5649,62.46),('S18_3029','1999 Yamaha Speed Boat','Ships','Min Lin Diecast',4259,86.02),('S18_3136','18th Century Vintage Horse Carriage','Vintage Cars','Red Start Diecast',5992,104.72),('S18_3140','1903 Ford Model A','Vintage Cars','Unimax Art Galleries',3913,136.59),('S18_3232','1992 Ferrari 360 Spider red','Classic Cars','Unimax Art Galleries',8347,169.34),('S18_3233','1985 Toyota Supra','Classic Cars','Highway 66 Mini Classics',7733,107.57),('S18_3259','Collectable Wooden Train','Trains','Carousel DieCast Legends',6450,100.84),('S18_3278','1969 Dodge Super Bee','Classic Cars','Min Lin Diecast',1917,80.41),('S18_3320','1917 Maxwell Touring Car','Vintage Cars','Exoto Designs',7913,99.21),('S18_3482','1976 Ford Gran Torino','Classic Cars','Gearbox Collectibles',9127,146.99),('S18_3685','1948 Porsche Type 356 Roadster','Classic Cars','Gearbox Collectibles',8990,141.28),('S18_3782','1957 Vespa GS150','Motorcycles','Studio M Art Models',7689,62.17),('S18_3856','1941 Chevrolet Special Deluxe Cabriolet','Vintage Cars','Exoto Designs',2378,105.87),('S18_4027','1970 Triumph Spitfire','Classic Cars','Min Lin Diecast',5545,143.62),('S18_4409','1932 Alfa Romeo 8C2300 Spider Sport','Vintage Cars','Exoto Designs',6553,92.03),('S18_4522','1904 Buick Runabout','Vintage Cars','Exoto Designs',8290,87.77),('S18_4600','1940s Ford truck','Trucks and Buses','Motor City Art Classics',3128,121.08),('S18_4668','1939 Cadillac Limousine','Vintage Cars','Studio M Art Models',6645,50.31),('S18_4721','1957 Corvette Convertible','Classic Cars','Classic Metal Creations',1249,148.80),('S18_4933','1957 Ford Thunderbird','Classic Cars','Studio M Art Models',3209,71.27),('S24_1046','1970 Chevy Chevelle SS 454','Classic Cars','Unimax Art Galleries',1005,73.49),('S24_1444','1970 Dodge Coronet','Classic Cars','Highway 66 Mini Classics',4074,57.80),('S24_1578','1997 BMW R 1100 S','Motorcycles','Autoart Studio Design',7003,112.70),('S24_1628','1966 Shelby Cobra 427 S/C','Classic Cars','Carousel DieCast Legends',8197,50.31),('S24_1785','1928 British Royal Navy Airplane','Planes','Classic Metal Creations',3627,109.42),('S24_1937','1939 Chevrolet Deluxe Coupe','Vintage Cars','Motor City Art Classics',7332,33.19),('S24_2000','1960 BSA Gold Star DBD34','Motorcycles','Highway 66 Mini Classics',15,76.17),('S24_2011','18th century schooner','Ships','Carousel DieCast Legends',1898,122.89),('S24_2022','1938 Cadillac V-16 Presidential Limousine','Vintage Cars','Classic Metal Creations',2847,44.80),('S24_2300','1962 Volkswagen Microbus','Trucks and Buses','Autoart Studio Design',2327,127.79),('S24_2360','1982 Ducati 900 Monster','Motorcycles','Highway 66 Mini Classics',6840,69.26),('S24_2766','1949 Jaguar XK 120','Classic Cars','Classic Metal Creations',2350,90.87),('S24_2840','1958 Chevy Corvette Limited Edition','Classic Cars','Carousel DieCast Legends',2542,35.36),('S24_2841','1900s Vintage Bi-Plane','Planes','Autoart Studio Design',5942,68.51),('S24_2887','1952 Citroen-15CV','Classic Cars','Exoto Designs',1452,117.44),('S24_2972','1982 Lamborghini Diablo','Classic Cars','Second Gear Diecast',7723,37.76),('S24_3151','1912 Ford Model T Delivery Wagon','Vintage Cars','Min Lin Diecast',9173,88.51),('S24_3191','1969 Chevrolet Camaro Z28','Classic Cars','Exoto Designs',4695,85.61),('S24_3371','1971 Alpine Renault 1600s','Classic Cars','Welly Diecast Productions',7995,61.23),('S24_3420','1937 Horch 930V Limousine','Vintage Cars','Autoart Studio Design',2902,65.75),('S24_3432','2002 Chevy Corvette','Classic Cars','Gearbox Collectibles',9446,107.08),('S24_3816','1940 Ford Delivery Sedan','Vintage Cars','Carousel DieCast Legends',6621,83.86),('S24_3856','1956 Porsche 356A Coupe','Classic Cars','Classic Metal Creations',6600,140.43),('S24_3949','Corsair F4U ( Bird Cage)','Planes','Second Gear Diecast',6812,68.24),('S24_3969','1936 Mercedes Benz 500k Roadster','Vintage Cars','Red Start Diecast',2081,41.03),('S24_4048','1992 Porsche Cayenne Turbo Silver','Classic Cars','Exoto Designs',6582,118.28),('S24_4258','1936 Chrysler Airflow','Vintage Cars','Second Gear Diecast',4710,97.39),('S24_4278','1900s Vintage Tri-Plane','Planes','Unimax Art Galleries',2756,72.45),('S24_4620','1961 Chevrolet Impala','Classic Cars','Classic Metal Creations',7869,80.84),('S32_1268','1980’s GM Manhattan Express','Trucks and Buses','Motor City Art Classics',5099,96.31),('S32_1374','1997 BMW F650 ST','Motorcycles','Exoto Designs',178,99.89),('S32_2206','1982 Ducati 996 R','Motorcycles','Gearbox Collectibles',9241,40.23),('S32_2509','1954 Greyhound Scenicruiser','Trucks and Buses','Classic Metal Creations',2874,54.11),('S32_3207','1950\'s Chicago Surface Lines Streetcar','Trains','Gearbox Collectibles',8601,62.14),('S32_3522','1996 Peterbilt 379 Stake Bed with Outrigger','Trucks and Buses','Red Start Diecast',814,64.64),('S32_4289','1928 Ford Phaeton Deluxe','Vintage Cars','Highway 66 Mini Classics',136,68.79),('S32_4485','1974 Ducati 350 Mk3 Desmo','Motorcycles','Second Gear Diecast',3341,102.05),('S50_1341','1930 Buick Marquette Phaeton','Vintage Cars','Studio M Art Models',7062,43.64),('S50_1392','Diamond T620 Semi-Skirted Tanker','Trucks and Buses','Highway 66 Mini Classics',1016,115.75),('S50_1514','1962 City of Detroit Streetcar','Trains','Classic Metal Creations',1645,58.58),('S50_4713','2002 Yamaha YZR M1','Motorcycles','Autoart Studio Design',600,81.36),('S700_1138','The Schooner Bluenose','Ships','Autoart Studio Design',1897,66.67),('S700_1691','American Airlines: B767-300','Planes','Min Lin Diecast',5841,91.34),('S700_1938','The Mayflower','Ships','Studio M Art Models',737,86.61),('S700_2047','HMS Bounty','Ships','Unimax Art Galleries',3501,90.52),('S700_2466','America West Airlines B757-200','Planes','Motor City Art Classics',9653,99.72),('S700_2610','The USS Constitution Ship','Ships','Red Start Diecast',7083,72.28),('S700_2824','1982 Camaro Z28','Classic Cars','Carousel DieCast Legends',6934,101.15),('S700_2834','ATA: B757-300','Planes','Highway 66 Mini Classics',7106,118.65),('S700_3167','F/A 18 Hornet 1/72','Planes','Motor City Art Classics',551,80.00),('S700_3505','The Titanic','Ships','Carousel DieCast Legends',1956,100.17),('S700_3962','The Queen Mary','Ships','Welly Diecast Productions',5088,99.31),('S700_4002','American Airlines: MD-11S','Planes','Second Gear Diecast',8820,74.03),('S72_1253','Boeing X-32A JSF','Planes','Motor City Art Classics',4857,49.66),('S72_3212','Pont Yacht','Ships','Unimax Art Galleries',414,54.60);

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(15) DEFAULT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ;

DROP TABLE IF EXISTS `fraud`;

CREATE TABLE `fraud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `tot` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


DROP TABLE IF EXISTS `payments`;


CREATE TABLE `payments` (
  `client_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ;


DROP TABLE IF EXISTS `book_sales`;


CREATE TABLE `book_sales` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `qty_sold` int(11) DEFAULT NULL,
  `tos` datetime DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ;




DROP TABLE IF EXISTS `employees`;
DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
) ;

INSERT INTO `offices` VALUES ('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');




CREATE TABLE `employees` (
  `employeeNumber` int NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`),
  KEY `reportsTo` (`reportsTo`),
  KEY `officeCode` (`officeCode`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`)
) ;

INSERT INTO `employees` VALUES (1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (APAC)'),(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1',1056,'Sales Manager (NA)'),(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2',1143,'Sales Rep'),(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1056,'Sales Rep'),(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5',1621,'Sales Rep'),(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4',1102,'Sales Rep');


drop table if exists sales;

CREATE TABLE sales(
    sales_employee VARCHAR(50) NOT NULL,
    fiscal_year INT NOT NULL,
    sale DECIMAL(14,2) NOT NULL,
    PRIMARY KEY(sales_employee,fiscal_year)
);

INSERT INTO sales(sales_employee,fiscal_year,sale)
VALUES('Bob',2016,100),
      ('Bob',2017,150),
      ('Bob',2018,200),
      ('Alice',2016,150),
      ('Alice',2017,100),
      ('Alice',2018,200),
       ('John',2016,200),
      ('John',2017,150),
      ('John',2018,250);

drop table if exists t ;
CREATE TABLE t (
    val INT
);

INSERT INTO t(val)
VALUES(1),(2),(2),(3),(4),(4),(5);



create table trains(Train_id integer,   Station varchar(50),  Time time);
insert into trains values (110,'San Francisco', '10:00:00'),
(110,'Redwood City',  '10:54:00'),
(110,'Palo Alto','11:02:00'),
(110 ,'San Jose', '12:35:00'),
(120,'San Francisco','11:00:00'),
(120 ,'Palo Alto', '12:49:00'),
(120,'San Jose', '13:30:00');


CREATE TABLE `students_d` (
  `date_id` date DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `attendance` varchar(10) DEFAULT NULL
);

insert into students_d values('2022-02-14' ,     1,'p'),
('2022-02-14' ,     2,'p'),
('2022-02-14' ,     3,'a'),
('2022-02-14' ,     4,'p'),
('2022-02-15' ,     1,'p'),
('2022-02-15' ,     2,'p'),
('2022-02-15' ,     3,'a'),
('2022-02-15' ,     4,'p'),
('2022-02-16' ,     1,'p'),
('2022-02-16' ,     2,'p'),
('2022-02-16' ,     3,'a'),
('2022-02-16' ,     4,'p'),
('2022-02-17' ,     1,'p'),
('2022-02-17' ,     2,'a'),
('2022-02-17' ,    3,'p'),
('2022-02-17' ,     4,'p');














SET SQL_SAFE_UPDATES =0 ;
SET GLOBAL log_bin_trust_function_creators = 1; 