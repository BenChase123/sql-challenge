--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select employees.emp_no, last_name, first_name, sex, salary
from employees
	inner join salaries on employees.emp_no = salaries.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where DATE_PART('year', hire_date) = 1986

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
inner join dept_manager m on e.emp_no = m.emp_no  
inner join departments d on m.dept_no = d.dept_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no  
inner join departments d on de.dept_no = d.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no  
inner join departments d on de.dept_no = d.dept_no
where dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no  
inner join departments d on de.dept_no = d.dept_no
where dept_name = 'Sales' or dept_name = 'Development'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*) AS CNT
FROM employees
GROUP BY last_name
ORDER BY CNT DESC