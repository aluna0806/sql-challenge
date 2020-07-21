CREATE TABLE department (
    dept_no varchar(10)   NOT NULL,
    dept_name varchar(50)   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE employee (
    emp_no int   NOT NULL,
    emp_title_id varchar(10)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    sex varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
	emp_no int	NOT NULL,
	dept_no varchar(10)	NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

CREATE TABLE  dept_manager (
	dept_no varchar(10)	NOT NULL,
	emp_no	int	NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE title (
    title_id varchar(10)   NOT NULL,
    title varchar(50)   NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE salaries (
	emp_no int	NOT NULL,
	salary int	NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

select * from title