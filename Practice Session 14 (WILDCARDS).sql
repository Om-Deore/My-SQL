-- Wildcards

SELECT * FROM burger
WHERE first_name like "s%";

SELECT * FROM burger 
WHERE hire_date LIKE "%06";

SELECT * FROM burger
WHERE Job LIKE "_a%";