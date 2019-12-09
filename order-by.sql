-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- sort ascending order (low to high)
SELECT firstname FROM customers
ORDER BY firstname;

-- sort descending order (high to low)
SELECT firstname FROM customers
ORDER BY firstname DESC;

-- sort two or more columns
SELECT country, firstname FROM customers
ORDER BY country, firstname;

-- order by column indices
SELECT country, firstname FROM customers
ORDER BY 1, 2;
