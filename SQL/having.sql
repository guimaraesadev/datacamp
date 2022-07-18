-- Having: Utilizado em junção com o Group By para filtrar os resultados de um agrupamento. 
-- O Having pode ser visto como um 'where' para dados agrupados.

-- Sintaxe: 

SELECT colum1, aggreatorFunction(column2)
FROM tableName 
GROUP BY colum1
HAVING condition -- nesse momento, funciona como um WHERE

-- Diferença entre o Having e o Where: 
-- O group by/having é aplicado depois que os dados já foram agrupados, enquanto o WHERE é aplicado antes dos dados serem agrupados. 


-- Seleciona a ocorrência onde a ocorrência do primeiro nome é maior que 10
-- Só é possivel utilizar o Having após utilizar o Group By

SELECT firstName, count(firstName) as 'quantity'
FROM person.Person
GROUP BY firstName 
HAVING count(firstName) > 10 

-- Saber quais produtos que no total de vendas estão entre 162k a 500k 

SELECT TOP 10 * FROM Sales.SalesOrderDetail 
SELECT productid, sum(linetotal) AS 'total'
FROM Sales.SalesOrderDetail
GROUP BY productid
HAVING SUM(linetotal) between 162000 and 50000