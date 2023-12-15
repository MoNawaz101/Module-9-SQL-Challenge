-- Module 9 SQL Challenge 

-- Query No. 1
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 	employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		employees.sex, 
		salaries.salary
FROM employees
INNER JOIN salaries
	ON employees.emp_no = salaries.emp_no;


-- Query No. 2
-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 	employees.first_name, 
		employees.last_name, 
		employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN '01-01-1986' AND '12-31-1986'
ORDER BY employees.hire_date,employees.last_name;


-- Query No. 3
-- List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name.
SELECT 	titles.title,
		dept_manager.dept_no,
		departments.dep_name,
		employees.emp_no, 
		employees.last_name, 
		employees.first_name
FROM employees
INNER JOIN dept_manager
	ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
	ON departments.dept_no = dept_manager.dept_no
INNER JOIN titles
	ON employees.emp_title_id = titles.title_id
	Where titles.title = 'Manager';
	

-- Query No. 4
-- List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name.
SELECT	dept_emp.emp_no,
		dept_emp.dept_no,
		departments.dep_name,
		employees.last_name, 
		employees.first_name
FROM dept_emp
INNER JOIN employees
	ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
	ON departments.dept_no = dept_emp.dept_no;


-- Query No. 5
-- List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B.
SELECT	employees.first_name, 
		employees.last_name,
		employees.sex
FROM employees
WHERE first_name = 'Hercules' and
	  last_name like 'B%'
ORDER BY employees.last_name;


-- Query No. 6
-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 	departments.dep_name,
		employees.emp_no, 
		employees.last_name, 
		employees.first_name
FROM dept_emp
INNER JOIN employees
	ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
	ON departments.dept_no = dept_emp.dept_no
	Where departments.dep_name = 'Sales';


-- Query No. 7
-- List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT 	employees.emp_no, 
		employees.last_name, 
		employees.first_name,
		departments.dep_name
FROM dept_emp
INNER JOIN employees
	ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
	ON departments.dept_no = dept_emp.dept_no
	Where departments.dep_name = 'Sales' or
		  departments.dep_name = 'Development';
		  
		  
-- Query No. 8
-- List the frequency counts, in descending order, of all the employee last names (that is, 
-- how many employees share each last name).
SELECT employees.last_name, 
       count(employees.last_name) AS "Frequency Count of Names"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Count of Names" DESC;


