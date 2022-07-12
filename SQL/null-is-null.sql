-- introduction to NULL and IS NULL
-- in SQL, NULL represents a missing or unknown value. 
-- you can check for NULL values using the expression IS NULL.
-- for example, to count the number of missing birth dates in the people table:

SELECT COUNT(*)
FROM people
WHERE birthdate IS NULL; -- quais aniversários estão com datas vazias 

-- as you can see, IS NULL is useful when combined with WHERE to figure out what data you're missing. (IS NULL + WHERE verificam dados que estão faltando)

-- sometimes, you'll want to filter out missing values so you only get results which are not NULL. 
-- to do this, you can use the IS NOT NULL operator.

-- for example, this query gives the names of all people whose birth dates are not missing in the people table.

SELECT name
FROM people
WHERE birthdate IS NOT NULL;

-- get the names of people who are still alive, i.e. whose death date is missing.

SELECT name, deathdate 
FROM people 
WHERE deathdate IS NULL 

-- get the title of every film which doesn't have a budget associated with it.

SELECT title, budget 
FROM films 
WHERE budget IS NULL 

-- conte os filmes que estão sem idioma 

SELECT COUNT(title)
FROM films 
WHERE language IS NULL 

