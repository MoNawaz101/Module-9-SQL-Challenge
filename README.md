# Module-9-SQL-Challenge

## Task Instructions  
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

The analysis requires the following:
1.	List the employee number, last name, first name, sex, and salary of each employee.
2.	List the first name, last name, and hire date for the employees who were hired in 1986.
3.	List the manager of each department along with their department number, department name, employee number, last name, and first name.
4.	List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5.	List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6.	List each employee in the Sales department, including their employee number, last name, and first name.
7.	List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.	List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


# Contents  
- [Directory structure](#Directory-structure)
- [CSV files](#CSV-files)
- [Entity Relationship Diagram]
- [SQL files]
- [Output files]

# Directory structure 
The root directory contain two folders  
- [data](\data) - This contains the original CSV files
- EmployeesSQL  - This contains the ERD, SQL files and another folder [Query_outputs](\EmployeesSQL\Quesry_outputs) which contains the output files from the queries.

# CSV files 
These are the original CSV files provided for the challenge.
- departments.csv  -  Data on the departments in the company. Columns with dept_no and dep_name
- dept_emp.csv - Data of all employees in each department. Columns with emp_no and dept_no
- dept_manager.csv - Data with the holders of managerial roles in each departent. Columns with dept_no and emp_no
- employees.csv - Data on every employee in the company. Columns with emp_no, emp_title_id, birth_data, first_name, last_name, sex, hire_date
- salaries.csv - Data on the salary of every employee. Columns with emp_no and salary
- titles.csv - Information on the roles in the company. Columns with title_id and title

  
