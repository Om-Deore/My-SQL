ALTER TABLE burger
ADD COLUMN supervisor_ID INT;

SELECT * FROM burger;

UPDATE burger
SET
supervisor_id = CASE
	WHEN emp_id = 102 THEN 105
    WHEN emp_id = 103 THEN 105
    WHEN emp_id = 104 THEN 105
    WHEN emp_id = 105 THEN 101
    WHEN emp_id = 106 THEN 105
END;

SELECT * FROM burger as a
INNER JOIN burger as b;

SELECT a.first_name, a.last_name,
CONCAT(b.first_name," ", b.last_name) AS Reports_To FROM burger as a
INNER JOIN burger as b
ON a.supervisor_ID = b.emp_id;

SELECT a.first_name, a.last_name,
CONCAT(b.first_name," ", b.last_name) AS Reports_To FROM burger as a
LEFT JOIN burger as b
ON a.supervisor_ID = b.emp_id;