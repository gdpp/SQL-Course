--- Users Queries

CREATE TABLE users (
 	name VARCHAR(10) UNIQUE
);

SELECT *
FROM users;

INSERT INTO users
VALUES 
	('juan'), 
	('jablo');

UPDATE users
SET name = 'enrique'
WHERE name = 'daniel2'

SELECT *
FROM users
WHERE name LIKE 'd%';

DELETE 
FROM users
WHERE name LIKE 'd%'

SELECT 
	id, 
	name, 
	UPPER(name) as upper_name, 
	LOWER(name) as lower_name, 
	LENGTH(name),
	(20 * 2) as constant
	CONCAT('*', id, '-', name - '*')
FROM users;

SELECT 
	name
	SUBSTRING(name, 0, 5)
	POSITION(' ')
FROM users;

