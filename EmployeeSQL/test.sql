SELECT * FROM employees
SELECT * FROM titles

INSERT INTO employees (emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date)
VALUES 
(473302,'s0001','7/25/1953','Hideyuki','Zallocco','M','4/28/1990'),
(475053,'e0002','11/18/1954','Byong','Delgrande','F','09/07/1991');


SET datestyle = "ISO, MDY";

show datestyle;


DELETE from employees
Where emp_no=473302 or
emp_no=475053;