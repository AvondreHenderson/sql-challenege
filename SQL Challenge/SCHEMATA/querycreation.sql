--List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
from employees
left join salaries
on employees.emp_no = salaries.emp_no; 

--List first name, last name, and hire date for employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date between date '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.

select deptManager.dept_no, deptManager.emp_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from deptManager
left join departments 
on departments.dept_no = deptManager.dept_no
left join employees
on deptManager.emp_no = employees.emp_no; 

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, deptEmployee.dept_no, departments.dept_name
from employees
left join deptEmployee
on employees.emp_no = deptEmployee.emp_no
left join departments
on deptEmployee.dept_no = departments.dept_no;

--List first name, last name, 
--and sex for employees whose first name is "Hercules" and last names begin with "B."
select employees.first_name, employees.last_name, employees.sex
from employees
where last_name
like 'B%'
and 
first_name ='Hercules';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, deptEmployee.dept_no, departments.dept_name
from employees
left join deptEmployee
on employees.emp_no = deptEmployee.emp_no
left join departments
on deptEmployee.dept_no = departments.dept_no
where dept_name ='Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, deptEmployee.dept_no, departments.dept_name
from employees
left join deptEmployee
on employees.emp_no = deptEmployee.emp_no
left join departments
on deptEmployee.dept_no = departments.dept_no
where departments.dept_name in ('Sales', 'Development');

--In descending order, list the frequency count of 
--employee last names, i.e., how many employees share each last name.
select last_name, count (last_name)
from employees
group by last_name
order by last_name desc;



