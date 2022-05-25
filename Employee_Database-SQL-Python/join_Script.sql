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
   
   
   insert into pytest.Table_A values(4,'RUCHI');
   insert into pytest.Table_B values(3,'E');
  
  select * from pytest.Table_B; 
 
  select 
  a.id,
  a.Names,
  b.id,
  b.code
  from pytest.Table_A a
  left join pytest.Table_B b
  on a.id = b.id


