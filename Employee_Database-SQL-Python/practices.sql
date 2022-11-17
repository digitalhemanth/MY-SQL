

create table pytest.Teams(
    local_team varchar(5),
    away_team varchar(5),
    winners varchar(5)
)

insert into pytest.Teams values('BANG' , 'AND', 'AND');
insert into pytest.Teams values('BANG' , 'KAR', 'AND');
insert into pytest.Teams values('AND' , 'BANG', 'KAR');
insert into pytest.Teams values('MAHA' , 'ASSA', 'BANG');
insert into pytest.Teams values('CHA' , 'RAJA', 'JAI');
insert into pytest.Teams values('PANJ' , 'KOAL', 'RAJ');
insert into pytest.Teams values('ASSA' , 'JAI', 'BANG');
insert into pytest.Teams values('BANG' , 'HIMA', 'AND');


select distinct x.Team,sum(x.Team) as matchs, 
count(w.winners) as won
from 
(select local_team as Team from pytest.Teams
union all 
select away_team as Team from pytest.Teams) x
left join (select winners from pytest.Teams ) w
on x.Team = w.winners
group by x.Team



CREATE TABLE employee (
    emp_id 	INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1),
    birthdate DATE,
    email VARCHAR(100) UNIQUE,
    salary INT
);



INSERT INTO employee
VALUES(1,'hem','lohi','m', DATE '1988-01-09', 'hem@email.com',5000);


INSERT INTO employee
VALUES(1,'hemanth','lohi','m', DATE '1988-01-09', 'hem@email.com',5000);



INSERT INTO employee
VALUES(1,'hemanth','lohi','m', DATE '1988-01-09', 'hem@email.com',5000)
ON CONFLICT DO NOTHING;









