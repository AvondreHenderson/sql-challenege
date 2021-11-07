--Create the tables in the following order
--Titles
--Employees
--Departments
--Dept_Manager
--Dept_Employees
--Salaries


--code to create the titles table
CREATE TABLE titles
(
	title_id VARCHAR PRIMARY KEY, 
	title VARCHAR
);

SELECT * FROM titles

--code to create the employees table
create table employees
(
	emp_no	INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,	
	first_name VARCHAR, 
	last_name VARCHAR, 	
	sex	VARCHAR, 
	hire_date DATE
);

select * from employees

--code to create the departments table 
create table departments
(
	dept_no	varchar primary key,
	dept_name varchar
);

select * from departments

--code to create the dept_manager table

create table deptManager
(
	dept_no	varchar,
	emp_no INT, 
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (dept_no, emp_no)
);

select * from deptManager

--code to create the dept_employees table 
create table deptEmployee
(
	emp_no int, 
	dept_no varchar,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key(emp_no, dept_no)
);

select * from deptEmployee

--code to create the salaries table
create table salaries
(
	emp_no int, 
	salary int,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no, salary)
);

select * from salaries