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
