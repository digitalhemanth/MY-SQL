select * from pytest.emps;

select id , emp_name, salary,
RANK () OVER ( order by salary desc ) rank_num 
from pytest.emps;

select 
Ex.id , 
Ex.emp_name, 
Ex.salary from (select id , emp_name, salary,
DENSE_RANK () OVER ( order by salary desc ) sal from pytest.emps ) Ex
where Ex.sal = 3;
