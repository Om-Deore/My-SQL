SELECT * FROM customers;

SHOW INDEXES FROM customers;

CREATE INDEX last_name_idx
ON customers(last_name);

CREATE INDEX last_name_first_name_idx
ON customers(last_name,first_name);

ALTER TAble customers
drop index last_name_idx;

SELECT * FROM customers
WHERE first_name = "Poppy";