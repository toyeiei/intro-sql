-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- select all columns from table customers 
SELECT * FROM customers;

-- select firstname, lastname, country columns from customers
SELECT
  firstname,
  lastname,
  country
FROM customers;

-- rename columns
SELECT
  firstname AS first_name,
  lastname AS last_name
FROM customers;

-- combine two columns
SELECT
  firstname,
  lastname,
  firstname || ' ' || lastname AS fullname
FROM customers;

-- create new columns
SEELCT
  milliseconds/ 60000.0 AS minutes,
  bytes/ (1024.0 * 1024.0) AS mb
FROM tracks;

-- calculator
SELECT 10 + 5;
SELECT 10 - 3;
SELECT 50 * 2;
SELECT 50 / 3;

-- select distinct values
SELECT DISTINCT country FROM customers;
