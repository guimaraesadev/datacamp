-- LIKE and NOT LIKE
-- as you've seen, the WHERE clause can be used to filter text data.  
-- however, so far you've only been able to filter by specifying the exact text you're interested in. 
-- in the real world, often you'll want to search for a pattern rather than a specific text string.

-- pattern: padrão 

-- No SQL, o operador LIKE pode ser usado em uma cláusula WHERE para pesquisar um padrão em uma coluna. 
-- Para fazer isso, você usa algo chamado curinga como um espaço reservado para alguns outros valores. 
-- Existem dois curingas que você pode usar com LIKE:

-- O curinga % corresponderá a zero, um ou muitos caracteres no texto. 
-- Por exemplo, a consulta a seguir corresponde a empresas como 'Data', 'DataC' 'DataCamp', 'DataMind' e assim por diante

SELECT name
FROM companies
WHERE name LIKE 'Data%';

-- O curinga _ corresponderá a um único caractere. 
-- Por exemplo, a consulta a seguir corresponde a empresas como 'DataCamp', 'DataComp' e assim por diante

SELECT name
FROM companies
WHERE name LIKE 'DataC_mp';

-- you can also use the NOT LIKE operator to find records that don't match the pattern you specify.

-- get the names of all people whose names begin with 'B'. The pattern you need is 'B%'.

SELECT name 
FROM people 
WHERE name LIKE 'B%'

-- get the names of people whose names have 'r' as the second letter. The pattern you need is '_r%'.

-- letra 'R' como segunda letra.

SELECT name 
FROM people 
WHERE name LIKE '_r%'

-- get the names of people whose names don't start with A. The pattern you need is 'A%'.

SELECT name 
FROM people
WHERE name NOT LIKE 'A%'

-- Get the title and gross earnings for movies which begin with the letter 'M' and order the results alphabetically.

SELECT title, gross FROM films 
WHERE title LIKE 'M%'
ORDER BY title 

-- Sorting single columns (DESC)

-- Para ordenar os resultados em ordem decrescente, você pode colocar a palavra-chave DESC após ORDER BY. 
-- Por exemplo, para obter todos os nomes na tabela de pessoas, em ordem alfabética inversa:

SELECT name
FROM people
ORDER BY name DESC;

-- Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.

SELECT film_id, imdb_score FROM reviews ORDER BY imdb_score DESC

-- Get the title for every film, in reverse order. 

SELECT title FROM films ORDER BY title DESC 

-- Get the title and duration for every film, in order of longest duration to shortest.

SELECT title, duration FROM films ORDER BY duration DESC 

-- Sorting multiple columns

-- ORDER BY também pode ser usado para classificar em várias colunas;
-- Ele classificará pela primeira coluna especificada, depois classificará pela próxima, depois pela próxima e assim por diante.
-- Por exemplo: 

SELECT birthdate, name
FROM people
ORDER BY birthdate, name;

-- classifica primeiro as datas de nascimento (do mais antigo para o mais recente);
-- e, em seguida, classifica os nomes em ordem alfabética. 
-- a ordem das colunas IMPORTA! 

-- Get the birth date and name of people in the people table, in order of when they were born and alphabetically by name.

SELECT birthdate, name FROM people ORDER BY birthdate, name 

-- Get the release year, duration, and title of films ordered by their release year and duration.

SELECT release_year, duration, title FROM films ORDER BY release_year, duration 

-- Get certifications, release years, and titles of films ordered by certification (alphabetically) and release year.

SELECT certification, release_year, title FROM films ORDER BY certification, release_year

-- Get the names and birthdates of people ordered by name and birth date. 

SELECT name, birthdate FROM people ORDER BY name, birthdate
