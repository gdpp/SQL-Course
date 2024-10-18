SELECT COUNT(*)
FROM users
WHERE email LIKE '%@google.com';

SELECT DISTINCT country
FROM users
WHERE email LIKE '%@google.com';

SELECT COUNT(*), country
FROM users
GROUP BY country;

SELECT first_name, last_name, country, last_connection
FROM users
WHERE country = 'Iceland';

SELECT COUNT(*)
FROM users
WHERE country = 'Iceland' AND last_connection LIKE '112.%';

SELECT first_name, last_name, country, last_connection
FROM users
WHERE 
	country = 'Iceland' 
	AND (last_connection LIKE '112.%' 
	OR last_connection LIKE '28.%' 
	OR last_connection LIKE '188.%');

SELECT first_name, last_name, country, last_connection
FROM users
WHERE 
	country = 'Iceland' 
	AND (last_connection LIKE '112.%' 
	OR last_connection LIKE '28.%' 
	OR last_connection LIKE '188.%');
ORDER BY
	last_name ASC, first_name ASC

SELECT country, first_name, last_name
FROM users
WHERE country IN('Mexico', 'Honduras', 'Costa Rica')
ORDER BY
	country ASC,
	first_name ASC,
	last_name ASC;


SELECT COUNT(*) AS total, country
FROM users
WHERE country IN('Mexico', 'Honduras', 'Costa Rica')
GROUP BY
	country
ORDER BY 
	country ASC;