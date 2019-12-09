-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- we use value functions to change format of a column
SELECT
  firstname,
  UPPER(firstname) AS upper_firstname,
  LOWER(firstname) AS lower_firstname
FROM customers;

-- clean missing value
SELECT
  company,
  COALESCE(company, 'End Customer') AS company2
FROM customers;

-- generate a random number
SELECT RANDOM();

-- random 10 samples from customers table
SELECT
  firstname,
  lastname,
  RANDOM() AS randNum
FROM customers
ORDER BY randNum
LIMIT 10;

-- round decimal digits e.g. two digits
SELECT ROUND(AVG(bytes), 2) FROM tracks;
