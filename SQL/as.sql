-- AS 
-- You may have noticed in the first exercise of this chapter that the column name of your result was just the name of the function you used. 
-- For example:

SELECT MAX(budget)
FROM films;

-- column name: 'max'
-- se você tiver duas funções de 'max' na query, terá confusão nas tabelas de resultado:

SELECT MAX(budget), MAX(duration)
FROM films;

-- result: 
-- 'max' = 12215500000
-- 'max' = 	334

-- To avoid situations like this, SQL allows you to do something called 'aliasing'
-- For example, in the above example we could use aliases to make the result clearer:

SELECT 
MAX(budget) AS max_budget,
MAX(duration) AS max_duration
FROM films;

-- result:
-- 'max_budget' = 12215500000
-- 'max_duration' = 334

-- get the title and net profit (the amount a film grossed, minus its budget) for all films. Alias the net profit as net_profit.
-- PT: obtenha o título e o lucro líquido (o valor arrecadado por um filme, menos seu orçamento) para todos os filmes. 
-- 'alias' ​​o lucro líquido como 'net_profit'

SELECT title, (gross - budget) 
AS net_profit
FROM films

-- Get the title and duration in hours for all films. 
-- The duration is in minutes, so you'll need to divide by 60.0 to get the duration in hours. 
-- 'alias' the duration in hours as duration_hours.

SELECT title, (duration / 60.0 ) --> para arredondar 
AS duration_hours 
FROM films 

-- Get the average duration in hours for all films
-- aliased as avg_duration_hours.

SELECT AVG(duration) / 60.0 --> para arredondar 
AS avg_duration_hours
FROM films 

-- Even more aliasing 