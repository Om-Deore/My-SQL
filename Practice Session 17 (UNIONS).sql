-- UNION COMBINES OF 2 OR MORE SELECT STATEMENTS

SELECT emp_id AS ID, first_name, last_name FROM burger
UNION
SELECT * FROM customers
ORDER by ID asc;

-- UNION doesn't include duplicates so we can use UNION ALL to add duplicate vaues too.
-- To run UNION correctly we should have same number of columns in every table.