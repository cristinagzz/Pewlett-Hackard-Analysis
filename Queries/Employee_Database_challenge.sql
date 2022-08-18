SELECT e.emp_no,e.first_name,e.last_name, t.title,t.from_date,t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t 
ON e.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date='9999-01-01' 
ORDER BY emp_no

SELECT COUNT (emp_no), title
INTO retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY COUNT (title) DESC

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
   AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no

--retirement Titles per deparment 
SELECT DISTINCT ON (rt.emp_no) 
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title,
	d.dept_name
INTO titles_per_department
FROM retirement_titles as rt
INNER JOIN dept_emp as de
ON (rt.emp_no = de.emp_no)
INNER JOIN departments as d
ON (d.dept_no = de.dept_no)
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT dept_name, title, COUNT (dept_name)
INTO count_titles_per_department
FROM titles_per_department 
GROUP BY dept_name, title
ORDER BY (dept_name) DESC

SELECT COUNT ('Senior Engineer'), title
INTO retirement_titles
FROM titles_per_department
WHERE (title='Senior Engineer')
GROUP BY title

SELECT dept_name, title='Senior Engineer', title='Engineer', COUNT (title)
INTO count_titles_per_department
FROM titles_per_department 
GROUP BY dept_name, (title='Senior Engineer'),(title='Engineer')
ORDER BY (dept_name) DESC




