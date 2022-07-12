-- WHERE AND OR
-- for example, the following returns all films released in either 1994 'or' 2000:

SELECT title
FROM films
WHERE release_year = 1994
OR release_year = 2000;

-- When combining AND and OR, be sure to enclose the individual clauses in parentheses, like so:
-- Ao combinar AND e OR, certifique-se de colocar as cláusulas individuais entre parênteses, assim:

SELECT title
FROM films
WHERE (release_year = 1994 OR release_year = 1995)
AND (certification = 'PG' OR certification = 'R');

-- Q: What does the OR operator do?
-- A: Display only rows that meet at least one of.

-- The following query selects all films that were released in 1994 or 1995 which had a rating of PG or R.
-- Por exemplo, a consulta a seguir seleciona todos os filmes lançados em 1994 ou 1995 com classificação PG ou R.

SELECT title
FROM films
WHERE (release_year = 1994 OR release_year = 1995)
AND (certification = 'PG' OR certification = 'R');

-- consulta para obter o título e o ano de lançamento dos filmes lançados nos anos 90 
-- que eram em francês ou espanhol e que arrecadaram mais de US$ 2 milhões brutos.

-- pt. 1: get the title and release year for films released in the 90s.
-- pt. 1: obter o título e o ano de lançamento dos filmes lançados nos anos 90.

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)

-- pt. 2: Now, build on your query to filter the records to only include French or Spanish language films.

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish' )

-- pt. 3: Finally, restrict the query to only return films that took in more than $2M gross.

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')
AND (gross > 2000000)



