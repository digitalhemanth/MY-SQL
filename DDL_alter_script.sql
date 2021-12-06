select * from pytest.emps;

alter table pytest.emps 
add column salary integer ;

select * from pytest.emps;

update pytest.emps 
set salary = 150000
where id = 2;

insert into pytest.emps (emp_name,tech,salary)
values ('Hem',1,66000);

insert into pytest.emps (emp_name,tech,salary)
values ('Hemanth kumar B',1,100000);



