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


## Contents  
- [Directory structure](#Directory-structure)
- [CSV files](#CSV-files)
- [Entity Relationship Diagram](#Entity-Relationship-Diagram)
- [SQL files](#SQL-files)
- [Output files](#Output-files)

## Directory structure 
The root directory contain two folders  
- [data](/data) - This contains the original CSV files
- [EmployeeSQL](/EmployeeSQL/)  - This contains the ERD, SQL files and another folder [Query_outputs](/EmployeeSQL/Query_outputs/) which contains the output files from the queries.

## CSV files 
These are the original CSV files provided for the challenge in the [data](/data) folder.
- departments.csv  -  Data on the departments in the company. Columns with dept_no and dep_name
- dept_emp.csv - Data of all employees in each department. Columns with emp_no and dept_no
- dept_manager.csv - Data with the holders of managerial roles in each departent. Columns with dept_no and emp_no
- employees.csv - Data on every employee in the company. Columns with emp_no, emp_title_id, birth_data, first_name, last_name, sex, hire_date
- salaries.csv - Data on the salary of every employee. Columns with emp_no and salary
- titles.csv - Information on the roles in the company. Columns with title_id and title

## Entity Relationship Diagram
In the folder [EmployeeSQL](/EmployeeSQL/)  

[ERD_image.png](/EmployeeSQL/ERD_Image.png)  
- This has been generated in [quickdatabasediagrams.com](https://app.quickdatabasediagrams.com/#/d/cFDCpS).
- It shows the relationships between the various tables.

## SQL files 
[Employee_table_schemata.sql](EmployeeSQL/Employee_table_schemata.sql)  
- This is an autogenerated file from [quickdatabasediagrams.com](https://app.quickdatabasediagrams.com/#/d/cFDCpS).    
- It generates the tables for the data from the [CSV files](/data).  
- An ALTER DATABASE command has been added to change the database datestyle to mm-dd-yyy which the original CSV files used.  

[EmployeeSQL/Employee_queries.sql](/EmployeeSQL/Employee_queries.sql)   
- This is the query file used to generate the information required for the [task](#Task-Instructions)

## Output files
In the folder [Query_outputs](EmployeeSQL/Query_outputs/)  

Query * Output.csv where * = 1 to 8.    
-  These files contain the outputs of the queries generated from the file [Employee_queries.sql](/EmployeeSQL/Employee_queries.sql)
  
