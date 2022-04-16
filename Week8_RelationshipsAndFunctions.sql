USE employees;
SELECT count(*) AS 'Number Hired', t.title
	FROM employees e
	JOIN titles t USING (emp_no)
	WHERE e.hire_date > '1965-01-01'
	GROUP BY t.title;
SELECT round(avg(s.salary), 2) AS 'Average Salary', t.title
	FROM salaries s
	JOIN titles t USING (emp_no)
	GROUP BY t.title;
SELECT sum(s.salary) AS 'Total Salary', d.dept_name 
	FROM salaries s
	JOIN dept_emp de USING (emp_no) 
	JOIN departments d USING (dept_no)
	WHERE d.dept_name = 'Marketing' 
	AND s.from_date BETWEEN '1990-01-01' and '1996-12-31';