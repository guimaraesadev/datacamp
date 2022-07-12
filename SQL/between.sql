-- BETWEEN 

-- as you've learned, you can use the following query to get titles of all films released in and between 1994 and 2000

SELECT title
FROM films
WHERE release_year >= 1994
AND release_year <= 2000;

-- in SQL the BETWEEN keyword provides a useful shorthand for filtering values within a specified range. This query is equivalent to the one above:

SELECT title
FROM films
WHERE release_year
BETWEEN 1994 AND 2000;

-- suppose we have a table called kids. We can get the names of all kids between the ages of 2 and 12 from the United States:

SELECT name
FROM kids
WHERE age BETWEEN 2 AND 12
AND nationality = 'USA';

-- Take a go at using BETWEEN with AND on the films data to get the title and release year of all Spanish language films released between 1990 and 2000 (inclusive) with budgets over $100 million. We have broken the problem into smaller steps so that you can build the query as you go along. 

-- get the title and release year of all films released between 1990 and 2000 (inclusive).

SELECT title, release_year 
FROM films
WHERE release_year BETWEEN 1990 AND 2000  

-- now, build on your previous query to select only films that have budgets over $100 million.

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000

-- now restrict the query to only return Spanish language films.

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND language = 'Spanish';

-- now include all Spanish language or French language films

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND(language = 'Spanish' OR language = 'French')



