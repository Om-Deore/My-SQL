SELECT * FROM customers;

DELIMITER $$
CREATE PROCEDURE get_customer()
BEGIN
	SELECT * FROM customers;
END $$
DELIMITER ;

CALL get_customer();

DROP PROCEDURE get_customer;

DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
	SELECT * 
    FROM customers
    WHERE customer_id = id;
END $$
DELIMITER ;

CALL find_customer(5);

DELIMITER $$
CREATE PROCEDURE find_customer1(IN f_name VARCHAR(50), IN l_name VARCHAR(50))
BEGIN
	SELECT * 
    FROM customers 
    WHERE first_name = f_name AND last_name = l_name; 
END $$
DELIMITER ;

CALL find_customer1("Larry","Lobster");

