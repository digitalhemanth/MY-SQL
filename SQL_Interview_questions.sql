--Write the query to find the employee record with the highest salary.
Select * from employee where salary =(select max(salary) from employee);

--write the query to find the 2nd highest salary in the employee table?

select 
Ex.id , 
Ex.emp_name, 
Ex.salary from (select id , emp_name, salary,
DENSE_RANK () OVER ( order by salary desc ) sal from pytest.emps ) Ex
where Ex.sal = 2;
