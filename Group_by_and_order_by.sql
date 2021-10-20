use pytest;

Create table monthly_bills
(
Item_id int not null primary key,
Item_name varchar(100) not null,
Cost int(10));

insert into monthly_bills values(16,'Sope',10);


select * from monthly_bills;


select * from monthly_bills order by Cost desc;

select item_name, COUNT(1) from monthly_bills
group by 1;


select item_name, SUM(cost) from monthly_bills
group by 1;

select avg(cost) from monthly_bills; 

select SUM(cost) from monthly_bills; 




