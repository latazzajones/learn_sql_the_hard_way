-- At the top of this new .sql file, add DROP TABLE commands to drop the tables you're about to recreate. Now your script can run without you needing to rm ex3.db. You'll need to go look up the syntax for DROP TABLE.
DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;
-- Combine all of ex2.sql through ex7.sql into one file and redo the above script so you just run this one new file to recreate the database.

-- from ex2.sql
CREATE TABLE person(
id INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT,
age INTEGER
);
CREATE TABLE pet(
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
breed TEXT,
dead INTEGER
);
CREATE TABLE person_pet(
person_id INTEGER,
pet_id INTEGER
);

-- from ex3.sql
INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, age, breed, dead)
  VALUES (0, "Fluffy", 1000, "Unicorn", 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

-- from ex4.sql

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

INSERT INTO person VALUES (1, "Tasha", "Jones", 31);
INSERT INTO pet VALUES (2, "Plant", 5, "Plant", 0);
INSERT INTO person_pet VALUES (1, 2);

-- from ex5.sql
SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != 'Zed';

-- Write a query that finds all pets older than 10 years.
SELECT * FROM pet WHERE age > 10;

-- Write a query to find all people younger than you. Do one that's older.
SELECT * FROM person WHERE age < 31;

-- Write a query that uses more than one test in the WHERE clause using the AND to write it.
SELECT * FROM pet WHERE dead < 1 AND breed = 'Plant';

-- Do another query that searches for rows using 3 columns and uses both AND and OR operators.
SELECT name, dead FROM pet WHERE age < 10 AND dead < 15 OR name="Fluffy";

-- from ex6.sql
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = "Zed";

-- Do a query that finds your pets you've added thus far.
-- Change the queries to use your person.id intead of the person.name like I've been doing.
SELECT pet.id, pet.name, pet.age
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.id = 1;

-- from ex7.sql

SELECT name, age FROM pet WHERE dead = 1;

DELETE FROM pet WHERE dead = 1;

SELECT * FROM pet;

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

SELECT * FROM pet;
