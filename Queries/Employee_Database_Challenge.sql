
--Deliverable 1

--Creating retirement titles table
SELECT emp.emp_no, 
emp.first_name,
emp.last_name,
tle.title,
tle.from_date,
tle.to_date
INTO retirement_titles
FROM employees as emp
Left Join titles as tle
ON (emp.emp_no = tle.emp_no)
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, emp_no ASC;

--retrieve number of titles
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

--Deliverable 2

--Create mentorship-elegibilty table
SELECT DISTINCT ON (em.emp_no) em.emp_no, 
em.first_name, 
em.last_name,
em.birth_date,
de.from_date,
de.to_date,
tle.title

INTO mentorship_elibilty
From employees as em
LEFT JOIN dept_emp as de
ON (em.emp_no = de.emp_no)
LEFT JOIN titles as tle
ON (em.emp_no = tle.emp_no)

WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;