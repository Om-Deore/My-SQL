USE youtube;

ALTER TABLE burger
ADD COLUMN Job VARCHAR (20)
AFTER last_name;

SELECT * FROM burger;

UPDATE burger
SET Job = CASE
WHEN emp_id = 101 THEN "Manager"
WHEN emp_id = 102 THEN "Cashier"
WHEN emp_id = 103 THEN "Cook"
WHEN emp_id = 104 THEN "Cook"
WHEN emp_id = 105 THEN "Asst. Manager"
WHEN emp_id = 106 THEN "Janitor"
END; 

-- AND OPERATOR (FIND first_name and last_name OF MANAGER WHERE DATE = 2024-08-06 AND JOB = "Manager" )
SELECT CONCAT(first_name," ",last_name) as Full_Name, job, hire_date
FROM burger
WHERE hire_date = "2024-08-06" AND Job = "Manager";

-- OR OPERATOR (CHECK FOR THE DETAILS OF EMPLOYEE WHERE SALARY IS 25.30 OR 10.00)
SELECT * FROM burger
WHERE hourly_pay = 10 OR hourly_pay = 25.30;

-- NOT OPERATOR (FIND OUT FULL NAME OF EMPLOYEE WHO ARE NOT MANAGER AND JANITOR )
SELECT CONCAT(first_name," ",last_name) AS Full_Name, Job FROM burger
WHERE NOT JOB = "Manager" AND NOT JOB ="Janitor";

-- IN OPERATOR (CHECK FOR THE DETAILS OF EMPLOYEE WHERE JOB IS Cashier, Cook, Asst. manager )
SELECT * FROM burger
WHERE JOB IN ("Cashier", "Cook", "Asst. Manager");

-- BETWEEN OPERATOR (SELECT DETAILS OF EMPLOPYEE)
SELECT * FROM burger
WHERE hourly_pay BETWEEN 20 AND 26;
