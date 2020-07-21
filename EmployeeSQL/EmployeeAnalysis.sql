--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, 
e.last_name, 
e.first_name, 
e.sex, 
s.salary
FROM employee AS e, salaries AS s
WHERE e.emp_no = s.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, 
last_name, 
hire_date
FROM employee
WHERE EXTRACT('year' FROM hire_date) = 1986

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
FROM dept_manager AS dm, department AS d, employee AS e
WHERE dm.dept_no=d.dept_no and dm.emp_no=e.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM department AS d, employee AS e, dept_emp AS de
WHERE d.dept_no=de.dept_no and de.emp_no=e.emp_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, 
last_name, 
sex
FROM employee AS e
WHERE e.first_name = 'Hercules' AND e.last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM department AS d, employee AS e, dept_emp AS de
WHERE d.dept_no=de.dept_no AND de.emp_no=e.emp_no AND d.dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM department AS d, employee AS e, dept_emp AS de
WHERE d.dept_no=de.dept_no AND de.emp_no=e.emp_no AND (d.dept_name = 'Sales' OR d.dept_name = 'Development')

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT (emp_no) AS employees
FROM employee
GROUP BY last_name
ORDER BY employees desc
