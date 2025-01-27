CREATE SCHEMA youtube;

USE youtube;

CREATE TABLE burger(
emp_id INT,
first_name VARCHAR (100),
last_name VARCHAR (100),
hourly_pay DECIMAL (7,2),
hire_date DATE DEFAULT '2024-08-06'
);

DESCRIBE burger;

ALTER TABLE burger
MODIFY emp_id INT NOT NULL PRIMARY KEY; 
 
ALTER TABLE burger
MODIFY hire_date DATE DEFAULT '2024-08-06';

INSERT INTO burger(emp_id, first_name, last_name, hourly_pay)
VALUES(101,'Euguene','Crabs',20.50),
	  (102,'Squidward','Tentacles',18.35),
      (103,'Spongebob','Squarepants',15.20),
      (104,'Patrick','Star',15.20),
      (105,'Sandy','Cheeks',17.80);
      
SELECT first_name,hourly_pay 
FROM burger
WHERE hourly_pay IN(
    SELECT hourly_pay
    FROM burger
	GROUP BY hourly_pay
	HAVING COUNT(*) > 1);

UPDATE burger 
SET hourly_pay = 25.30,
	hire_date = "2024-08-01"
WHERE emp_id IN (103,104);

SELECT * FROM burger;

DELETE FROM burger
WHERE emp_id = 105;

INSERT INTO burger(emp_id,first_name,last_name,hourly_pay)
VALUES (105,'Sandy','Cheeks',16.70);

