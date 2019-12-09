-- basic SQL for data analyst
-- created by DataRockie on 10 December 2019

-- subqueries is very useful for data analysis
-- we can use subqueries in many places e.g. WHERE, FROM and SELECT clauses

-- example 1: find track that has highest bytes
SELECT * FROM tracks
WHERE bytes = (
  SELECT MAX(bytes) FROM tracks -- inner query
);

-- example 2: find tracks whose bytes less than avg_bytes in tracks table
SELECT trackid, name, bytes FROM tracks
WHERE bytes < (
  SELECT AVG(bytes) FROM tracks
);

-- example 3: we use IN operator if inner query returns more than one value
-- this example illustrates how to write subquery (it's too simple :P)
SELECT 
  firstname,
  lastname,
  country
FROM customers
WHERE country IN (
  SELECT country FROM customers
  WHERE country = 'USA' OR country = 'France' 
)
ORDER BY country, firstname;

-- example 4: subquery in FROM clause
SELECT 
  name AS artistName, 
  title AS trackName
FROM (
  SELECT A.*, B.*
  FROM artists AS A
  JOIN albums  AS B
  ON A.artistid = B.artistid
);

-- example 5: we can use CTE (common table expressions)
-- to avoid writing subqueries i.e. using WITH clause
WITH t1 AS (
  SELECT country, COUNT(*) AS n
  FROM customers
  GROUP BY 1
  ORDER BY 2 DESC
)
SELECT * FROM t1 LIMIT 5;
