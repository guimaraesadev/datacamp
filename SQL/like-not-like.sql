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

