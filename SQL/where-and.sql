-- You can build up your WHERE queries by combining multiple conditions with the AND keyword.
SELECT title
FROM films
WHERE release_year > 1994
AND release_year < 2000;

-- -- get the title and release year for all Spanish language films released before 2000.

SELECT title, release_year 
FROM films 
WHERE language = 'Spanish' AND release_year < 2000 

-- get all details for Spanish language films released after 2000, but before 2010.
-- obtenha todos os detalhes de filmes em espanhol lançados após 2000, mas antes de 2010.

SELECT *
FROM films
WHERE release_year > 2000
AND release_year < 2010
AND language = 'Spanish'
