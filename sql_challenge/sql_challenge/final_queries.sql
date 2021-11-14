--1.) List the following details of each employee: employee number, last name, first name, sex, and salary.


SELECT 
	em.emp_no, em.last_name, em.first_name, em.sex, sa.salary
FROM 
	employees em
JOIN 
	salaries sa
		ON em.emp_no = sa.emp_no 



--2.) List first name, last name, and hire date for employees who were hired in 1986.


SELECT 
	first_name, last_name, hire_date
FROM 
	employees
WHERE 
	hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--3.) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


SELECT 
	de.dept_no AS "Department Number", de.dept_name AS "Department Name", dm.emp_no AS "Employee Number", em.last_name AS "Manager Last Name", em.first_name AS "Manager First Name"
FROM 
	department de
JOIN 
	dept_manager dm
		ON de.dept_no = dm.dept_no 
JOIN 
	employees em
		ON dm.emp_no = em.emp_no 



--4.) List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT 
	em.emp_no AS "Employee Number", em.last_name AS "Last Name", em.first_name AS "First Name", de.dept_name AS "Department Name"
FROM 
	employees em 
JOIN 
	dept_manager dm
	ON em.emp_no = dm.emp_no 
JOIN 
	department de
	ON de.dept_no = dm.dept_no 


--5.) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


SELECT 
	first_name AS "First Name", last_name AS "Last Name", sex AS "Sex"
FROM 
	employees 
WHERE 
	first_name LIKE 'Hercules' AND last_name LIKE 'B%';


--6.) List all employees in the Sales department, including their employee number, last name, first name, and department name.



SELECT 
	em.emp_no AS "Employee Number", em.last_name AS "Last Name", em.first_name AS "First Name", de.dept_name AS "dept_name"
FROM 
	employees em
JOIN 
	dept_manager dm
	ON em.emp_no = dm.emp_no 
JOIN 
	department de 
	ON de.dept_no = dm.dept_no
WHERE 
	de.dept_name = 'Sales';


--7.) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


SELECT 
	em.emp_no AS "Employee Number", em.last_name AS "Last Name", em.first_name AS "First Name", de.dept_name AS "Department Name"
FROM 
	employees em
JOIN 
	dept_manager dm
	ON em.emp_no = dm.emp_no 
JOIN 
	department de 
	ON de.dept_no = dm.dept_no
WHERE 
	de.dept_name = 'Sales'
OR 
	de.dept_name = 'Development';


--8.) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


SELECT 
	last_name, COUNT (last_name) AS "frequency"
FROM
	employees 
GROUP BY
	last_name 
ORDER BY 
	"frequency" DESC;


