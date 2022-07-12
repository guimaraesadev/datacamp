-- learning to COUNT
-- this code gives the number of rows in the people table

SELECT COUNT(*)
FROM people;

-- output: 8397

-- how many records are contained in the reviews table?

SELECT COUNT(*)
FROM reviews;
-- output: 4.968

-- practice with COUNT
-- as you've seen, COUNT(*) tells you how many rows are in a table. 
-- however, if you want to count the number of non-missing values in a particular column, you can call COUNT() on just that column.

-- for example, to count the number of birth dates present in the people table:

SELECT COUNT(birthdate)
FROM people;
-- output: 6152

-- it's also common to combine COUNT() with DISTINCT to count the number of distinct values in a column.
-- for example, this query counts the number of distinct birth dates contained in the people table:

SELECT COUNT(DISTINCT birthdate)
FROM people;

-- output: 5398

-- 1. count the number of rows in the people table.

SELECT COUNT(*)
FROM people; 

-- 2. count the number of (non-missing) birth dates in the people table.

SELECT COUNT(birthdate)
FROM people;

-- 3. count the number of unique birth dates in the people table.

SELECT COUNT(DISTINCT birthdate)
FROM people

-- count the number of unique languages in the films table.

SELECT COUNT(DISTINCT language)
FROM films;

-- count the number of unique countries in the films table.

SELECT COUNT(DISTINCT country)
FROM films;

-- get the number of films which don't have a language associated with them.




