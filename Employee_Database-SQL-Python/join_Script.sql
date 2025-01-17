select * from pytest.employees;
select  * from  pytest.dept_emp;
select  * from  pytest.salaries;


select *
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no

select emp.*,
sal.salary,
title.title,
dept.dept_name   
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no



select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as Name,
title.title,
dept.dept_name,  
sal.salary
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no



select 
dept.dept_name,  
sum(sal.salary) as salary
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no
group by dept.dept_name
order by salary desc



select 
title.title,
dept.dept_name,  
sum(sal.salary) over() as sal
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no


select 
title.title as title ,
dept.dept_name,  
sum(sal.salary) over(partition by title order by title desc ) as sal
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no



select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as Name,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
row_number() over(partition by dept order by title)
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no



select 
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
NTH_VALUE(emp.first_name, 2) over(partition by dept order by salary desc RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as "FIRST"
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no

select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
lead (salary , 1) over(partition by title) as leads
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no


select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
lag (salary , 1) over(partition by title) as lags
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no

select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
ntile(2) over(partition by dept ) as ntiles
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no


select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
first_value (emp.first_name) over(partition by dept ) as "First"
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no

select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
last_value (emp.first_name) over(partition by dept ) as "First"
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no

Write a query to get the total salary, department level in ascending order. 

select 
dept.dept_name as deptartment,  
sum(sal.salary) as total_salary
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no
group by deptartment 
order by deptartment asc

Write a query to get the top 3 employess list who are getting highest salary from each  department ascending order. 

select * from (
select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
row_number () over(partition by dept order by salary ) as Sal
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no ) as res 
where res.Sal <=3


select emp.emp_no,
concat(emp.first_name, ' ',emp.last_name) as FullName,
title.title as title ,
dept.dept_name as dept,  
sal.salary as salary,
nth_value(sal.salary,5 ) over( partition by dept order by dept desc RANGE BETWEEN 
            UNBOUNDED PRECEDING AND 
            UNBOUNDED FOLLOWING) as Sal
from pytest.employees emp
inner join pytest.salaries sal 
on emp.emp_no = sal.emp_no
inner join pytest.dept_emp demp 
on emp.emp_no = demp.emp_no
inner join pytest.titles title 
on emp.emp_title_id = title.title_id
inner join pytest.departments dept 
on demp.dept_no = dept.dept_no



create table pytest.Table_A
    (
       ID int, 
       Names varchar(10)
    );
 --drop table pytest.Table_B;
 create table pytest.Table_B
    (
       ID int, 
       CODE varchar(2)
    );
   
   
   insert into pytest.Table_A values(4,'Krishna');
   insert into pytest.Table_B values(3,'E');
  
  delete from pytest.Table_B
  where id = null
  
  select * from pytest.Table_B; 
 
  select * from pytest.Table_A; 
 
 
 
  SELECT 
  A.ID,
  A.NAMES,
  B.ID,
  B.CODE
  FROM PYTEST.TABLE_A A
  Inner JOIN PYTEST.TABLE_B B
  ON A.ID = B.ID



  
  
  
  select * from pytest.employees
  
  
  
  
 DROP TABLE pytest.employees_dtl;

CREATE TABLE pytest.employees_dtl (
	emp_no serial NOT NULL,
	age int not null,
	gender varchar NOT NULL
	);

  insert into pytest.employees_dtl values(8,5,'F')
  
  select * from pytest.employees_dtl
  

 select count(*),* from (
  select
  case when age>= 1 and age <= 10 then 'age 1 < 10'
       when age>= 10 and age <= 30 then 'age 10 < 30'
       when age>= 30 and age <= 60 then 'age 30 < 60'
   end as agegroup
   from pytest.employees_dtl ) as temps 
   group by agegroup
   
   
   
    select
    count(case when age> 1 and age < 10 then emp_no ELSE null end) as "1 < 10",
     count(case when age> 10 and age < 30 then emp_no ELSE null end) as  "10 < 30",
     count(case when age> 30 and age < 60 then emp_no ELSE null end) as " 30 < 60"
  from pytest.employees_dtl
   
   
   
  
   
  
  