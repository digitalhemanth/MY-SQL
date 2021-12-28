--Write the query to find the employee record with the highest salary.
Select * from employee where salary =(select max(salary) from employee);

--write the query to find the 2nd highest salary in the employee table?

select 
Ex.id , 
Ex.emp_name, 
Ex.salary from (select id , emp_name, salary,
DENSE_RANK () OVER ( order by salary desc ) sal from pytest.emps ) Ex
where Ex.sal = 2;


--4. write the query to find the 2nd lowest salary in the employee table?

select 
Ex.id , 
Ex.emp_name, 
Ex.salary from (select id , emp_name, salary,
DENSE_RANK () OVER ( order by salary ) sal from pytest.emps ) Ex
where Ex.sal = 2;


--write the query to find the distinct domain from the email column


select substring(email from '@(.*)$') as domain, count(*)
from  pytest.emps
group by domain

SELECT distinct(split_part (email,'@',2) ) as domain_name FROM pytest.emps 

SELECT split_part (email,'@',2) as domain_name FROM pytest.emps group by domain_name

