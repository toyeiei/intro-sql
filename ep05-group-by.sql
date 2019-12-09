-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- we normally use GROUP BY with aggregate function
-- return number of rows in customers table
SELECT COUNT(*) FROM customers;

-- count sample group by country
SELECT
  country,
  COUNT(*) AS n
FROM customers
GROUP BY country;

-- we can GROUP BY two or more columns
SELECT
  country,
  state,
  COUNT(*) AS n
FROM customers
GROUP BY country, state;

-- we can use column index in GROUP BY
-- this produces the same result as previous query
SELECT
  country,
  state,
  COUNT(*) AS n
FROM customers
GROUP BY 1, 2;

-- come back to this query later when you know how to join tables :D
SELECT 
  A.name AS genreName,
  COUNT(*) AS n
FROM genres AS A
JOIN tracks AS B
ON A.genreid = B.genreid
GROUP BY 1
ORDER BY 2 DESC;
