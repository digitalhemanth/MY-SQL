DROP TABLE IF EXISTS pytest.departments;

CREATE TABLE pytest.departments (
	dept_no 		VARCHAR(4) 		NOT NULL,
	dept_name 		VARCHAR(40)		NOT NULL,
	UNIQUE (dept_name),
	PRIMARY KEY (dept_no)
);

select count(*) from pytest.departments; --9


DROP TABLE IF EXISTS pytest.employees;

CREATE TABLE pytest.employees (
	emp_no 			INT 		NOT NULL,
	emp_title_id    VARCHAR 	NOT NULL,
	birth_date 		DATE 		NOT NULL,
	first_name 		VARCHAR 	NOT NULL,
	last_name 		VARCHAR 	NOT NULL,
	gender 			VARCHAR 	NOT NULL,
	hire_date 		DATE 		NOT NULL,
	UNIQUE (emp_no),
	PRIMARY KEY (emp_no)
);

select count(*) from pytest.employees; --300024

DROP TABLE IF EXISTS pytest.dept_emp;

CREATE TABLE pytest.dept_emp (
	emp_no 			INT 			NOT NULL,
	dept_no 		VARCHAR(4) 		NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES pytest.employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES pytest.departments (dept_no)
);

select count(*) from pytest.dept_emp; --331603