-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- CASE is used to write condition in SQL
-- think of it like IF function in Excel
SELECT
  company,
  CASE
    WHEN company IS NULL THEN 'End Customer'
    WHEN company IS NOT NULL THEN 'Corporate'
  END AS segment
FROM customers;

-- create multiple conditions with ELSE
SELECT
  total,
  CASE
    WHEN total >= 20 THEN 'high value'
    WHEN total >= 10 THEN 'medium value'
    ELSE 'low value'
  END AS segment
FROM invoices;
