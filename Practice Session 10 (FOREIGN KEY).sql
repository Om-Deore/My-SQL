CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO customers (first_name, last_name)
VALUES
    ("Fred", "Fish"),
    ("Larry", "Lobster"),
    ("Bubble", "Bass");

SELECT * FROM customers;

CREATE TABLE transaction (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

ALTER TABLE transaction AUTO_INCREMENT = 100;

INSERT INTO transaction (amount, customer_id)
VALUES
    (12.32, 1),  
    (43.12, 2),  
    (22.00, 1),  
    (20.99, 3);  

SELECT * FROM transaction; 	 	
use youtube;
