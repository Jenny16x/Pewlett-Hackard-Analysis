SELECT 
	e.emp_no,
    e.first_name,
	e.last_name,
 	ti.title,
 	ti.from_date,
	ti.to_date
INTO chall
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM chall;

DROP TABLE chall CASCADE

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO current_titles
FROM chall
ORDER BY emp_no, title DESC;

SELECT * FROM current_titles;

SELECT 
	cu.title
FROM current_titles AS cu
INTO 

SELECT DISTINCT ON (emp_no)
	e.emp_no,
    e.first_name,
	e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
 INTO mentor
 FROM employees AS e
 INNER JOIN dept_emp AS de
 ON (e.emp_no = de.emp_no)
 INNER JOIN titles as ti
 ON (e.emp_no = ti.emp_no)
 WHERE (ti.to_date = '9999-01-01') AND 
 (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31');
 
 SELECT * FROM mentor;

