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
