USE youtube;

CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM burger;

SELECT * FROM employee_attendance
ORDER BY last_name ASC;

DROP VIEW employee_attendance;

ALTER TABLE customers
ADD COLUMN email VARCHAR(50);

ALTER TABLE customers
AUTO_INCREMENT = 5;

UPDATE customers
SET customer_id = 4 WHERE customer_id = 101;

UPDATE customers
SET email = CASE
WHEN customer_id = 1 THEN "fred@gmail.com"
WHEN customer_id = 2 THEN "Larry@gmail.com"
WHEN customer_id = 3 THEN "Bubble@gmail.com"
WHEN customer_id = 4 THEN "Poppy@gmail.com"
END;

SELECT * FROM customers;

INSERT INTO customers(first_name,last_name,email)
VALUES("Pearl","Crabs","Crabs@gmail.com");

DESCRIBE customers;

CREATE VIEW customer_email AS
SELECT email 
FROM customers;

SELECT * FROM customer_email;

