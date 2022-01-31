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
-- create new table for retiring employees
SELECT emp_no, first_name, last_name 
INTO retirement_info
FROM Employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
And (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
SELECT * FROM retirement_info;
-- joining retirement_info and dept_emp tables
SELECT  retirement_info.emp_no,
		retirement_info.first_name,
		retirement_info.last_name,
		dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;
-- left join retirement_info and dept_emp into a new table
SELECT  ri.emp_no,
		ri.first_name,
		ri.last_name,
		de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01)');