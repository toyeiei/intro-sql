-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- basic where clause to filter rows
SELECT * FROM customers
WHERE country = 'USA'; 

SELECT * FROM invoices
WHERE total < 10;

-- filter rows with two or more conditions
SELECT * FROM customers
WHERE country = 'USA' AND state = 'CA';

SELECT * FROM customers
WHERE country = 'USA' OR country = 'France';

-- IN operator
SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Brazil');

-- BETWEEN AND operator
SELECT * FROM invoices
WHERE total BETWEEN 10 AND 15;

-- filter dates between 01 Jan 2010 and 31 Mar 2010
SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01' AND '2010-03-31';

-- LIKE (pattern matching)
-- filter customers whose firstname starts with L
SELECT * FROM customers
WHERE firstname LIKE 'L%';

-- filter customers whose email is gmail.com
SELECT * FROM customers
WHERE email LIKE '%gmail.com';

-- we can use _ (wildcard) to match one character
SELECT * FROM customers
WHERE firstname LIKE 'J_hn';

-- working with NULL
-- filter NULL values
SELECT * FROM customers
WHERE company IS NULL;

-- filter non NULL values
SELECT * FROM customers
WHERE company IS NOT NULL;
