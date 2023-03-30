# SET 3

# Q1. Write a stored procedure that accepts the month and year as inputs and
#  prints the ordernumber, orderdate and status of the orders placed in that month. */

DELIMITER //
CREATE PROCEDURE `order_status` (YY int, MM int)
BEGIN
	SELECT ordernumber,orderdate,status FROM orders WHERE YEAR(orderDate)=yy AND MONTH(orderdate)=mm;
END //

CALL ORDER_STATUS(2003,01);


# 2. Write a stored procedure to insert a record into the cancellations table for all cancelled orders.

CREATE TABLE cancellations (
id INT PRIMARY KEY AUTO_INCREMENT,
customernumber INT,
ordernumber INT,
comments TEXT,
FOREIGN KEY (customernumber) REFERENCES customers(customerNumber),
FOREIGN KEY (ordernumber) REFERENCES orders(ordernumber)
);

DELIMITER //
CREATE PROCEDURE `order_cancelled` ()
BEGIN
	INSERT INTO cancellations (customernumber, ordernumber, comments)
    SELECT customerNumber, orderNumber,comments FROM orders WHERE status = 'Cancelled';
END //

CALL order_cancelled();

SELECT * FROM cancellations;


/* 3. a. Write function that takes the customernumber as input and returns the purchase_status based on the following criteria . [table:Payments]
if the total purchase amount for the customer is < 25000 status = Silver, amount between 25000 and 50000, status = Gold
if amount > 50000 Platinum */


DELIMITER //
CREATE FUNCTION `purchase_status` (c_num INT)
RETURNS VARCHAR(15)
BEGIN
	DECLARE p_status VARCHAR(15);
	DECLARE p_amount INT;
    
    SET p_amount = (SELECT sum(amount) AS p_amount FROM payments WHERE customerNumber = c_num );
    
		IF p_amount > 50000 THEN SET p_status = 'Platinum';
        ELSEIF p_amount > 25000 THEN SET p_status = 'Gold';
		ELSEIF p_amount <= 25000 THEN SET p_status = 'Silver';
        END IF;
        
RETURN p_status;
END //

SELECT purchase_status(103);


# b. Write a query that displays customerNumber, customername and purchase_status from customers table.
SELECT customerNumber, customerName, purchase_status(customerNumber) FROM customers;


# 4. Replicate the functionality of 'on delete cascade' and 'on update cascade' using triggers on movies and rentals tables.
# Note: Both tables - movies and rentals - don't have primary or foreign keys. Use only triggers to implement the above.

DELIMITER //
CREATE TRIGGER after_update
AFTER UPDATE
ON movies FOR EACH ROW
BEGIN
	UPDATE rentals SET movieid=new.id WHERE movieid = old.id;
END //


DELIMITER //
CREATE TRIGGER after_delete
AFTER DELETE
ON movies FOR EACH ROW
BEGIN
	DELETE FROM rentals WHERE movieid = old.id;
END //


# 5. Select the first name of the employee who gets the third highest salary. [table: employee]
SELECT fname,NTH_VALUE(fname,3) OVER (ORDER BY salary DESC) FROM employee;


# 6. Assign a rank to each employee  based on their salary. The person having the highest salary has rank 1. [table: employee]
SELECT fname,lname,salary,DENSE_RANK() OVER (ORDER BY Salary DESC) FROM employee;