-- as you've seen, WHERE is very useful for filtering results. 
-- however, if you want to filter based on many conditions, WHERE can get unwieldy. For example:

SELECT name
FROM kids
WHERE age = 2
OR age = 4
OR age = 6
OR age = 8
OR age = 10; -- many conditions, very complicated 

-- so, the above example would become simply: 
-- the operator 'IN' replace OR in many conditions 

SELECT name
FROM kids
WHERE age IN (2, 4, 6, 8, 10);

-- get the title and release year of all films released in 1990 or 2000 that were longer than two hours.
-- remember, duration is in minutes
-- duration > 120 

SELECT title, release_year, duration 
FROM films 
WHERE release_year 
IN (1990, 2000)
AND duration > 120 

-- get the title and language of all films which were in English, Spanish, or French.

SELECT title, language
FROM films 
WHERE language IN ('English', 'Spanish', 'French')

-- get the title and certification of all films with an NC-17 or R certification.

SELECT title, certification 
FROM films 
WHERE certification IN ('NC-17', 'R')

