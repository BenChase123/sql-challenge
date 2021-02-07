CREATE TABLE "salary" (
  "emp_no" int,
  "salary" int,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
  "title_id" VARCHAR(5),
  "title" VARCHAR(50),
  PRIMARY KEY ("title_id")
);

CREATE TABLE "departments" (
  "dept_no" VARCHAR(4),
  "dept_name" VARCHAR(50),
  PRIMARY KEY ("dept_no")
);
	
CREATE TABLE "employees" (
  "emp_no" int,
  "emp_title" VARCHAR(50),
  "birth_date" date,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "sex" VARCHAR(1),
  "hire_date" date,
  PRIMARY KEY ("emp_no"),
  Constraint fk_title
	Foreign key(emp_title)
	  References titles(title_id)
	
);

CREATE TABLE "dept_emp" (
  "emp_no" int,
  "dept_no" VARCHAR(4),
  PRIMARY KEY ("emp_no", "dept_no"),
  Constraint fk_employee
	Foreign key(emp_no)
	  References employees(emp_no),
  Constraint fk_department
    Foreign key(dept_no)
	  References departments(dept_no)
);

CREATE TABLE "dept_manager" (
  "emp_no" int,
  "dept_no" VARCHAR(4),
  PRIMARY KEY ("emp_no", "dept_no"),
  Constraint fk_employee
	Foreign key(emp_no)
	  References employees(emp_no),
  Constraint fk_department
    Foreign key(dept_no)
	  References departments(dept_no)
);	
