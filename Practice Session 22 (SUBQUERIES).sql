SELECT first_name, last_name, hourly_pay,
	(SELECT AVG(hourly_pay) from burger )AS avg_pay
FROM burger;

SELECT first_name, last_name, hourly_pay
FROM burger
WHERE hourly_pay > (SELECT AVG(hourly_pay) from burger);

SELECT first_name, last_name
FROM customers
WHERE customer_id IN
(SELECT DISTINCT customer_id
FROM transaction
WHERE customer_id IS NOT NULL);