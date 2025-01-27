CREATE TABLE products(
	product_id INT NOT NULL,
    product_name VARCHAR (20),
    price DECIMAL (5,3)    
);

SET AUTOCOMMIT = ON;

INSERT INTO products (product_id, product_name)
VALUE(105,'Napkins'),
	 (106,'Forks'),
     (107,'Paper Plates'),
     (108,'Straw');

DELETE FROM products
WHERE product_id >= 105;

SELECT * FROM products;

ALTER TABLE products
MODIFY price DECIMAL(5,2);

ALTER TABLE products
ALTER PRICE SET DEFAULT 0;


CREATE TABLE TRANSACTIONS
(transaction_id INT,
 amount DECIMAL (5,2),
 transaction_date DATETIME DEFAULT NOW());

SELECT * FROM Transactions;

INSERT INTO TRANSACTIONS (transaction_id , amount)
VALUES (104,23.3);