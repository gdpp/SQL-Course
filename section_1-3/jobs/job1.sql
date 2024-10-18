DROP TABLE users;

CREATE TABLE users (
    id serial,
    name VARCHAR(100)
);

INSERT INTO users (name)
VALUES 
('Eldrin Frostbane'),
('Seraphine Windwhisper'),
('Aelarion Blackspear'),
('Seraphine Shadowdancer'),
('Faelwen Blackspear'),
('Corwin Stonebreaker'),
('Zephyr Starfall'),
('Varian Duskrunner'),
('Varian Starfall'),
('Seraphine Stormforge'),
('Thalion Ironbark'),
('Elora Duskrunner'),
('Drystan Darkthorn'),
('Elora Winterborn'),
('Talis Sunstrider'),
('Sylvanna Flamecaller'),
('Eldrin Stormrider'),
('Seraphine Starfall'),
('Vanya Duskrunner'),
('Elowen Duskrunner')

SELECT *
FROM users;

SELECT *
FROM users
WHERE id = 10;

SELECT *
FROM users
WHERE name LIKE '%El';

SELECT *
FROM users
WHERE name LIKE '% Starfall';

UPDATE users
SET name = 'Gustavo Perez'
WHERE id = 1;

DELETE 
FROM users 
WHERE id = (SELECT MAX(id) FROM users);

SELECT
	id,
	name,
	SUBSTRING(name, 0, POSITION(' ' in name)) AS first_name,
	SUBSTRING(name, POSITION(' ' in name) + 1, LENGTH(name)) AS last_name
	TRIM(SUBSTRING(name, POSITION(' ' in name), LENGTH(name))) AS trimmed_last_name
FROM users;

UPDATE users
SET 
    first_name = SUBSTRING(name, 0, POSITION(' ' in name)),
	last_name = SUBSTRING(name, POSITION(' ' in name) + 1, LENGTH(name))