insert into pytest.emps 
              (emp_name,tech,salary)values('Hemanth kumar Reddy','Data Science',30)
			  
			  
select * from pytest.emps

select * from pytest.my_tech

insert into pytest.my_tech values (3,'Data Science',3,'2021-09-01 00:00:00')

select e.emp_name,
       tc.technology,
	   e.salary,
	   tc.experiance
from pytest.emps e
inner join  pytest.my_tech tc
on tc.tech_id = e.tech
order by e.salary desc;