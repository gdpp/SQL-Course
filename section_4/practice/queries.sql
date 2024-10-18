SELECT * FROM users;

SELECT first_name, last_name, followers
FROM users
WHERE followers BETWEEN 4600 AND 4700
ORDER BY followers ASC

SELECT 
	COUNT(*) AS total_users,
	MIN(followers) as min_followers,
	MAX(followers) as max_followers,
	AVG(followers) as avg_followers,
	ROUND(AVG(followers)) as round_avg_followers,
	SUM(followers) / count(*) as avg_manual
FROM users

SELECT first_name, last_name, followers
FROM users
WHERE followers = 4 or followers = 4999;

SELECT COUNT(*), followers
FROM users
WHERE followers = 4 or followers = 4999
GROUP BY followers;

SELECT COUNT(*), followers
FROM users
WHERE followers BETWEEN 4500 AND 4999
GROUP BY followers
ORDER BY followers DESC;

SELECT COUNT(*), country 
FROM users
GROUP BY country
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC;

SELECT DISTINCT country
FROM users

SELECT 
	COUNT(*),
	SUBSTRING(email, POSITION('@' in email) + 1) as domain_email
FROM users
GROUP BY SUBSTRING(email, POSITION('@' in email) + 1)
HAVING COUNT(*) > 1
ORDER BY SUBSTRING(email, POSITION('@' in email) + 1) ASC;

SELECT domain_email
FROM (
SELECT 
	COUNT(*) AS total, 
	SUBSTRING(email, POSITION('@' in email) + 1) AS domain_email,
	'gdpp' AS name,
	32 AS age
FROM users
GROUP BY SUBSTRING(email, POSITION('@' in email) + 1)
HAVING COUNT(*) > 1
ORDER BY SUBSTRING(email, POSITION('@' in email) + 1) ASC
) AS email_domains;