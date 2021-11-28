

create table pytest.emps(
  Id serial primary key not Null,
  Emp_Name varchar(250) not Null,
  Tech int,
  foreign key(Tech) references pytest.my_tech(tech_id)
  on delete set Null
);

insert into pytest.emps(Emp_Name,Tech) values('Hemanth',2);


select * from pytest.emps;