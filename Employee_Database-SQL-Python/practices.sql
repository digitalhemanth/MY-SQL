

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