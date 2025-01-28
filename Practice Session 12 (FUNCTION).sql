USE youtube;

SELECT COUNT(AMOUNT) AS AMOUNT_AMOUNT 
FROM Transaction;

SELECT MAX(AMOUNT) AS MAXIMUM_AMOUNT 
FROM Transaction;
 
SELECT MIN(AMOUNT) AS MINIMUM_AMOUNT
FROM Transaction;
 
SELECT AVG(AMOUNT) AS AVERAGE_AMOUNT 
FROM Transaction;
 
SELECT SUM(AMOUNT) AS AMOUNT_COUNT 
FROM Transaction;

SELECT CONCAT(First_name," ",Last_name) AS Full_Name
FROM Customers;

SELECT COALESCE(hire_date, NULL) AS NULL_DATE FROM burger; -- COALESCE Function is used to deal with the null values in the table 	 
