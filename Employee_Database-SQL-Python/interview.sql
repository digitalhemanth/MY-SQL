create table pytest.A(
  ID int,
  cols char(2)
)

insert into pytest.A values(1,'1')


create table pytest.B(
  ID int,
  cols char(2)
)

insert into pytest.B values(1,'1')


select * from pytest.B;

select 
a.id,
b.id
from pytest.A a
inner join pytest.B b on a.id = b.id



select 
a.id,
b.id
from pytest.A a
left join pytest.B b on a.id = b.id


select 
a.id,
b.id
from pytest.A a
right join pytest.B b on a.id = b.id


select 
a.id,
b.id
from pytest.A a
cross join pytest.B b 



