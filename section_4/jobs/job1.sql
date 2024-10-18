SELECT * FROM users;

SELECT first_name, last_name, last_connection
FROM users
WHERE last_connection LIKE '221.%';

SELECT first_name, last_name, followers
FROM users
WHERE followers > 4600;

