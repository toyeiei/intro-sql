-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- HAVING is used to filter result from GROUP BY
-- filter countries having customers more than five
SELECT
  country,
  COUNT(*) AS n
FROM customers
HAVING n >= 5;

-- we can write HAVING just like we did with WHERE clause
SELECT
  country,
  COUNT(*) AS n
FROM customers
HAVING n >= 5 AND country <> 'USA';
