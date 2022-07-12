-- often your results will include many duplicate values.
-- if you want to select all the unique values from a column, you can use the DISTINCT keyword.

-- this might be useful if, for example, you're interested in knowing which languages are represented in the films table:

SELECT DISTINCT language
FROM films;

-- get all the unique countries represented in the films table.

SELECT DISTINCT country 
FROM films

-- get all the different film certifications from the films table.

SELECT DISTINCT certification
FROM films

-- get the different types of film roles from the roles table.
-- obtenha os diferentes tipos de papéis de filmes na tabela de papéis.

SELECT DISTINCT role 
FROM roles 