USE youtube;

SELECT * FROM transaction;

ALTER TABLE transaction
Add column order_date INT ;

ALTER TABLE transaction 
MODIFY COLUMN order_date DATE;

UPDATE transaction
SET 
order_date = CASE
	WHEN transaction_id = 100 THEN "2023-01-01"
    WHEN transaction_id = 101 THEN "2023-01-01"
    WHEN transaction_id = 102 THEN "2023-01-02"
    WHEN transaction_id = 103 THEN "2023-01-02"
    ELSE "2023-01-03"
END;

SELECT SUM(amount) AS Total_amount, order_date
FROM transaction
GROUP BY order_date;

SELECT MAX(amount) AS Total_amount, order_date
FROM transaction
GROUP BY order_date;

SELECT MIN(amount) AS Total_amount, order_date
FROM transaction
GROUP BY order_date;

SELECT AVG(amount) AS Total_amount, order_date
FROM transaction
GROUP BY order_date;

SELECT COUNT(amount) AS Total_amount, order_date
FROM transaction
GROUP BY order_date;

SELECT SUM(amount) AS Total_amount, customer_id
FROM transaction
GROUP BY customer_id;

SELECT MAX(amount) AS Total_amount, customer_id
FROM transaction
GROUP BY customer_id;

SELECT MIN(amount) AS Total_amount, customer_id
FROM transaction
GROUP BY customer_id;

SELECT COUNT(amount) AS Total_amount, customer_id
FROM transaction
GROUP BY customer_id;

SELECT COUNT(amount) AS Total_amount, customer_id
FROM transaction
GROUP BY customer_id
HAVING Total_amount = 1 AND customer_id IS NOT NULL;