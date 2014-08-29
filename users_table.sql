DROP DATABASE IF EXISTS globant;
CREATE DATABASE globant;
USE globant;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex ENUM ("male", "female") NOT NULL,
	age INT (3) NULL
);

INSERT INTO users (first_name, last_name, sex, age) VALUES ("Carolina", "Santucho", "female", 26);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Emanuel", "Pérez", "male", 40);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Ricardo", "Molina", "male", 29);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Felipe", "Miceli", "male", 22);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Fernanda", "Gonzalez", "female", 31);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Andrea", "Zamora", "female", 27);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Juan", "Suarez", "male", 25);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Dante", "Pregal", "male", 24);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Bruno", "Yorda", "male", 24);
INSERT INTO users (first_name, last_name, sex, age) VALUES ("Pedro", "Pereyra", "male", 26);

#SELECT * FROM users;
#SELECT * FROM users WHERE age>=25;
#SELECT * FROM users WHERE first_name LIKE "A%";
#SELECT * FROM users WHERE upper(first_name) LIKE "A%" and sex="male";
#UPDATE users SET first_name="Updated" WHERE (sex="female") and (age BETWEEN 18 and 26);
#DELETE FROM users WHERE age=null;
SELECT * FROM users;

DROP TABLE IF EXISTS locations;
CREATE TABLE locations (
	id_loc INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	uid INT,
	location ENUM ("North Park", "South Park", "Alsina", "Laminar") NOT NULL,
	FOREIGN KEY (uid) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO locations (uid, location) VALUES (1, "North Park");
INSERT INTO locations (uid, location) VALUES (2, "South Park");
INSERT INTO locations (uid, location) VALUES (3, "Laminar");
INSERT INTO locations (uid, location) VALUES (4, "South Park");
INSERT INTO locations (uid, location) VALUES (5, "North Park");

SELECT * FROM locations;
#TRUNCATE TABLE locations;
#DROP TABLE locations;
