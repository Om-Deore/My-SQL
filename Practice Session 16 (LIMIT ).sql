SELECT * FROM customers
ORDER BY first_name 
LIMIT 1;

SELECT * FROM burger
LIMIT 5
OFFSET 1;

-- Also be written as
SELECT * FROM burger
LIMIT 2,4; -- Here 1 is offset and 5 is limit, It means it will leave 2 values and will jump to the next value
