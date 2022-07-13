-- funções agregadas para calculos; 
-- MAX(), MIN(), SUM()

SELECT AVG(budget)
FROM films;

-- a função AVG() retorna o valor médio de uma coluna numérica.

SELECT AVG(column_name)
FROM table_name
WHERE condition;

-- fornece o valor médio da coluna de orçamento da tabela de filmes.
-- Da mesma forma, a função MAX() retorna o orçamento mais alto:

SELECT MAX(budget)
FROM films;

-- a função SUM() retorna o resultado da soma dos valores numéricos em uma coluna:

SELECT SUM(budget)
FROM films;

-- use the SUM() function to get the total duration of all films.

SELECT SUM(duration)
FROM films

-- get the average duration of all films.

SELECT AVG(duration)
FROM films 

-- get the duration of the shortest film.

SELECT MIN(duration) 
FROM films

-- get the duration of the longest film.
SELECT MAX(duration)
FROM films

-- Aggregate functions practice
-- Use the SUM() function to get the total amount grossed by all films.

SELECT SUM(gross)
FROM films

-- Get the average amount grossed by all films.
-- Obtenha o valor médio arrecadado por todos os filmes.

SELECT AVG(gross)
FROM films;

-- Get the amount grossed by the worst performing film.

SELECT MIN(gross) 
FROM films

-- Get the amount grossed by the best performing film.

SELECT MAX(gross)
FROM films

-- AGGREGATE FUNCTIONS WITH WHERE 
-- for example, to get the total budget of movies made in the year 2010 or later // para obter o orçamento total de filmes feitos no ano de 2010 ou posterior:

SELECT SUM(budget)
FROM films
WHERE release_year >= 2010;

-- Use the SUM() function to get the total amount grossed by all films made in the year 2000 or later.

SELECT SUM(gross) FROM films 
WHERE release_year >= 2000

-- Get the average amount grossed by all films whose titles start with the letter 'A'.

SELECT AVG(gross) 
FROM films 
WHERE title LIKE 'A%'

-- Get the amount grossed by the worst performing film in 1994.

SELECT MIN(gross) FROM films 
WHERE release_year = 1994

-- Get the amount grossed by the best performing film between 2000 and 2012, inclusive.

SELECT MAX(gross) 
FROM films 
WHERE release_year 
BETWEEN 2000 AND 2012 



