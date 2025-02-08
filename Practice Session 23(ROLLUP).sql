SELECT SUM(amount) AS Total_amount, customer_id
FROM transaction
GROUP BY customer_id WITH ROLLUP;

SELECT COUNT(transaction_id) AS Transaction_count, customer_id
FROM transaction
GROUP BY customer_id WITH ROLLUP;

SELECT SUM(hourly_pay) AS Hourly_pay, first_name
FROM burger
GROUP BY first_name WITH ROLLUP;