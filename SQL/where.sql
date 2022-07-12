-- WHERE 

-- in SQL, the WHERE keyword allows you to filter based on both text and numeric values in a table. 
-- there are a few different comparison operators you can use:

= equal
<> not equal -- diferente 
< less than -- menor que
> greater than -- maior que 
<= less than or equal to
>= greater than or equal to

-- for example, you can filter text records such as title. 
-- the following code returns all films with the title 'Metropolis':

SELECT title
FROM films
WHERE title = 'Metropolis';

-- notice that the WHERE clause always comes after the FROM statement!
-- observe que a clausula WHERE vem sempre depois da instrução FROM

-- Q: What does the following query return?

SELECT title
FROM films
WHERE release_year > 2000;

-- A: films released after the year 2000

-- For example, the following query selects all details for films with a budget over ten thousand dollars:

SELECT *
FROM films
WHERE budget > 10000;

-- get all details for all films released in 2016.

SELECT * FROM films 
WHERE release_year < 2000

-- get the number of films released before 2000.

SELECT COUNT(*)
FROM films 
WHERE release_year < 2000

-- get the title and release year of films released after 2000.

SELECT release_year, title
FROM films
WHERE release_year > 2000;

-- simple filtering of text: A clausula 'WHERE' também pode ser utilizada para filtrar strings

-- this query gets the titles of all films which were filmed in China:

SELECT title
FROM films
WHERE country = 'China';

-- important: in PostgreSQL (the version of SQL we're using), you must use single quotes with WHERE. => ''

-- get all details for all French language films.

SELECT * FROM films
WHERE language = 'French'

-- get the name and birth date of the person born on November 11th, 1974. Remember to use ISO date format ('1974-11-11')!

SELECT * FROM people 
WHERE birthdate = '1974-11-11'

-- get the number of Hindi language films.

SELECT COUNT(*)
FROM films 
WHERE language = 'Hindi'

-- get all details for all films with an R certification.

SELECT * FROM films 
WHERE certification = 'R'

-- get all details for Spanish language films released after 2000.

SELECT * FROM films 
WHERE language = 'Spanish' AND release_year > 2000 


