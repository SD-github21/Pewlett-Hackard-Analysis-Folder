-- Deliverable 1 -- create Retirement Titles table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t ON (t.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Distinct with Orderby to remove duplicate rows and create a table with employees and their unique titles
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles 
ORDER BY emp_no, to_date DESC;

-- Create Retiring Titles table with title count
SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) desc;

-- Deliverable 2 -- Create Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de 
	ON (de.emp_no = e.emp_no)
		INNER JOIN titles as t 
		ON (t.emp_no = e.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- Deliverable 3 -- Additional insights -- create a Retirement Departments table
SELECT DISTINCT ON (ut.emp_no) ut.emp_no,
	ut.first_name,
	ut.last_name,
	ut.title,
	d.dept_name
INTO retirement_depts
FROM unique_titles as ut
	INNER JOIN dept_emp as de ON (de.emp_no = ut.emp_no)
		INNER JOIN departments as d on (de.dept_no = d.dept_no)
ORDER BY ut.emp_no;

-- Query # 1 Count of employees retiring by department
SELECT dept_name, COUNT(emp_no) 
FROM retirement_depts
GROUP BY dept_name
ORDER BY dept_name;

-- Query # 2 Count of retiring employees by title within departments
SELECT dept_name, title, COUNT(emp_no)
FROM retirement_depts
GROUP BY dept_name, title
ORDER BY dept_name, title;