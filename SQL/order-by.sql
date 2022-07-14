-- ORDER BY 

-- No SQL, a palavra-chave ORDER BY é usada para classificar os resultados em ordem crescente ou decrescente de acordo com os valores de uma ou mais colunas.
-- Por padrão, 'ORDER BY' classificará em ordem crescente. 
-- Se você deseja classificar os resultados em ordem decrescente, pode usar a palavra-chave 'DESC'

SELECT title
FROM films
ORDER BY release_year DESC;

-- retorna os títulos dos filmes ordenados por ano de lançamento, 'do mais recente ao mais antigo'

-- Q: How do you think ORDER BY sorts a column of text values by default?
-- A: Alphabetically (A-Z) 

-- get the names of people from the people table, sorted alphabetically. 

SELECT name 
FROM people 
ORDER BY name 

-- get the names of people, sorted by birth date.

SELECT name, birthdate FROM people ORDER BY birthdate 

-- Get the birth date and name for every person, in order of when they were born.

SELECT birthdate, name FROM people ORDER BY birthdate; 

-- Get the title of films released in 2000 or 2012, in the order they were released.

SELECT title, release_year FROM films 
WHERE release_year IN (2000, 2012)
ORDER BY release_year 

-- Get all details for all films except those released in 2015 and order them by duration. 

SELECT * FROM films 
WHERE release_year <> 2015 
ORDER BY duration

