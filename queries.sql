-- Finding employees within retirement age
SELECT first_name, last_name
FROM Employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
SELECT first_name, last_name
FROM Employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';
SELECT first_name, last_name
FROM Employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';
SELECT first_name, last_name
FROM Employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';
SELECT first_name, last_name
FROM Employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';
-- Retirement eligibility 
SELECT first_name, last_name
FROM Employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
-- get the count of eligible employees
SELECT COUNT (first_name)
FROM Employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
And (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- create new table with desired retirement information
SELECT first_name, last_name
INTO retirement_info
FROM Employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
And (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
