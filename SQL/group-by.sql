-- GROUP BY 
-- serve muita das vezes para 'agregar' resultados; 

-- Observe que você pode combinar GROUP BY com ORDER BY para agrupar seus resultados
-- calcular algo sobre eles e ordenar seus resultados. 

SELECT sex, count(*)
FROM employees
GROUP BY sex
ORDER BY count DESC;

-- Observe também que ORDER BY sempre vem depois de GROUP BY. 

-- get the release year and count of films released in each year.
-- obtenha o ano de lançamento e a contagem de filmes lançados em cada ano.

SELECT release_year, COUNT(title)
FROM films
GROUP BY release_year;

-- Get the release year and average duration of all films, grouped by release year.
SELECT release_year, AVG(duration)
FROM films 
GROUP BY release_year

-- Get the language and total gross amount films in each language made.

SELECT language, SUM(gross) 
FROM films 
GROUP BY language

-- Get the country and total budget spent making movies in each country.

SELECT SUM(budget), country
FROM films
GROUP BY country

-- obtenha o ano de lançamento;
-- o país e o maior orçamento gasto para fazer um filme para cada ano, para cada país
-- classifique seus resultados por ano de lançamento e país.

