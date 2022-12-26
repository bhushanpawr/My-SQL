# Aggregate Functions
/*
SUM          [Summation]
MIN          [Minimum]
MAX          [Maximum]
AVG          [Average]
COUNT        [Count]
*/

CREATE DATABASE aggregate_fun;
USE aggregate_fun;
CREATE TABLE products (
  pcode VARCHAR(15) DEFAULT NULL,
  pname VARCHAR(70) DEFAULT NULL,
  productLine VARCHAR(50) NOT NULL,
  pvendor VARCHAR(50) DEFAULT NULL,
  qtyInStock INT DEFAULT NULL,
  MRP DECIMAL(7,2) DEFAULT NULL
);

INSERT INTO products VALUES 
('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','Min Lin Diecast',7933,95.70),
('S10_1949','1952 Alpine Renault 1300','Classic Cars','Classic Metal Creations',7305,214.30),
('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','Highway 66 Mini Classics',6625,118.94),
('S10_4698','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','Red Start Diecast',5582,193.66),
('S10_4757','1972 Alfa Romeo GTA','Classic Cars','Motor City Art Classics',3252,136.00),
('S10_4962','1962 LanciaA Delta 16V','Classic Cars','Second Gear Diecast',6791,147.74),
('S12_1099','1968 Ford Mustang','Classic Cars','Autoart Studio Design',68,194.57),
('S12_1108','2001 Ferrari Enzo','Classic Cars','Second Gear Diecast',3619,207.80),
('S12_1666','1958 Setra Bus','Trucks and Buses','Welly Diecast Productions',1579,136.67),
('S12_2823','2002 Suzuki XREO','Motorcycles','Unimax Art Galleries',9997,150.62),
('S12_3148','1969 Corvair Monza','Classic Cars','Welly Diecast Productions',6906,151.08),
('S12_3380','1968 Dodge Charger','Classic Cars','Welly Diecast Productions',9123,117.44),
('S12_3891','1969 Ford Falcon','Classic Cars','Second Gear Diecast',1049,173.02),
('S12_3990','1970 Plymouth Hemi Cuda','Classic Cars','Studio M Art Models',5663,79.80),
('S12_4473','1957 Chevy Pickup','Trucks and Buses','Exoto Designs',6125,118.50),
('S12_4675','1969 Dodge Charger','Classic Cars','Welly Diecast Productions',7323,115.16),
('S18_1097','1940 Ford Pickup Truck','Trucks and Buses','Studio M Art Models',2613,116.67),
('S18_1129','1993 Mazda RX-7','Classic Cars','Highway 66 Mini Classics',3975,141.54),
('S18_1342','1937 Lincoln Berline','Vintage Cars','Motor City Art Classics',8693,102.74),
('S18_1367','1936 Mercedes-Benz 500K Special Roadster','Vintage Cars','Studio M Art Models',8635,53.91),
('S18_1589','1965 Aston Martin DB5','Classic Cars','Classic Metal Creations',9042,124.44),
('S18_1662','1980s Black Hawk Helicopter','Planes','Red Start Diecast',5330,157.69),
('S18_1749','1917 Grand Touring Sedan','Vintage Cars','Welly Diecast Productions',2724,170.00),
('S18_1889','1948 Porsche 356-A Roadster','Classic Cars','Gearbox Collectibles',8826,77.00);

SELECT * FROM products;

SELECT SUM(qtyInStock) AS total_qty FROM products;
SELECT SUM(MRP) AS total_MRP FROM products;

SELECT MIN(qtyInStock) AS min_qty FROM products;
SELECT MIN(MRP) AS min_MRP FROM products;

SELECT MAX(qtyInStock) AS max_qty FROM products;
SELECT MAX(MRP) AS max_MRP FROM products;

SELECT AVG(qtyInStock) AS avg_qty FROM products;
SELECT AVG(MRP) AS avg_MRP FROM products;

SELECT COUNT(pname) AS count FROM products;
SELECT COUNT(productLine) AS count FROM products;
SELECT COUNT(pvendor) AS count FROM products;

SELECT COUNT(DISTINCT(pname)) AS Distinct_Count FROM products;
SELECT COUNT(DISTINCT(productLine)) AS Distinct_Count FROM products;
SELECT COUNT(DISTINCT(pvendor)) AS Distinct_Count FROM products;