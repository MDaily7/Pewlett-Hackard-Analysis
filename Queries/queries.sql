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
-- left join current_emp and dept_emp
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no;
-- left join current_emp and dept_emp and order it
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;
-- join current_emp and dept_emp into new table
SELECT COUNT(ce.emp_no), de.dept_no
INTO emp_per_dept
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;
--find the most recent date on the list sort by descending order
SELECT * FROM salaries
ORDER BY to_date DESC;
-- create employee info table from employees, dept_emp, and salaries tables
SELECT emp_no, 
	first_name, 
	last_name, 
	gender
INTO employee_info
FROM Employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
And (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
SELECT e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.gender,
	de.to_date,
	s.slary
INTO emp_info
FROM Employees as e
LEFT JOIN salaries as s
	ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
And (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');
-- department info table
SELECT ce.first_name,
	ce.last_name,
	ce.emp_no,
	d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp as de
	ON (ce.emp_no = de.emp_no)
INNER JOIN departments as d
	ON (de.dept_no = d.dept_no);
	-- sales department retirement info
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	d.dept_name
INTO sales_retire_info
FROM retirement_info as ri
INNER JOIN dept_emp as de
	ON (ri.emp_no = de.emp_no)
INNER JOIN departments as d
	ON (de.dept_no = d.dept_no)
WHERE (de.dept_no = 'd007');
-- sales and development retirement info
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	d.dept_name
INTO sales_development_info
FROM retirement_info as ri
INNER JOIN dept_emp as de
	ON (ri.emp_no = de.emp_no)
INNER JOIN departments as d
	ON (de.dept_no = d.dept_no)
WHERE de.dept_no IN ('d007', 'd005');