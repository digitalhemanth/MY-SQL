DROP TABLE IF EXISTS pytest.departments;

CREATE TABLE pytest.departments (
	dept_no 		VARCHAR(4) 		NOT NULL,
	dept_name 		VARCHAR(40)		NOT NULL,
	UNIQUE (dept_name),
	PRIMARY KEY (dept_no)
);

select * from pytest.departments;

