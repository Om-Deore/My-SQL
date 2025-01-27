USE youtube;

DESCRIBE transaction;

SHOW TABLES;

SELECT * FROM transaction;
SELECT * FROM customers;
SELECT * FROM burger;

Describe transaction;
dESCRIBE customers;

INSERT INTO transaction (transaction_id, amount)
VALUES(transaction_id,25);

SELECT * FROM Transaction
INNER JOIN customers 
ON customers.customer_id = transaction.customer_id;

SELECT t.customer_id, t.transaction_id, c.first_name, c.last_name, t.amount FROM transaction as t
LEFT JOIN customers as c
ON c.customer_id = t.customer_id;

SELECT * FROM Transaction 
CROSS JOIN customers;

SELECT * FROM Customers
JOIN Transaction
ON customers.customer_id = transaction.customer_id;

