CREATE TABLE department

(

	
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR(50)

); 


SELECT * FROM department;







CREATE TABLE dept_emp


(

	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL


);

SELECT * FROM dept_emp;




CREATE TABLE dept_manager

(

	
	emp_no VARCHAR(30) NOT NULL,
	dept_no VARCHAR(30) NOT NULL




);

SELECT * FROM dept_manager; 





CREATE TABLE employees


(

	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL, 
	sex VARCHAR(10) NOT NULL, 
	hire_date VARCHAR(30) NOT NULL 




);

SELECT * FROM employees; 



CREATE TABLE salaries 

(

	emp_no INT NOT NULL, 
	salary INT NOT NULL
	
	
	
	
);

SELECT * FROM salaries;



CREATE TABLE titles 


(

	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(50) NOT NULL



);

SELECT * FROM titles;


