--tables 
create table pytest.Table_A
    (
       ID int, 
       Names varchar(10)
    );
 --drop table pytest.Table_B;
 create table pytest.Table_B
    (
       ID int, 
       CODE varchar(2)
    );
   
  --inser scripts 
   insert into pytest.Table_A values(2,'Hem');
   insert into pytest.Table_A values(null,'Kumar');
   insert into pytest.Table_A values(1,'Ram');
   insert into pytest.Table_A values(1,'Hemanth');
   insert into pytest.Table_A values(3,'Sam');
   insert into pytest.Table_A values(4,'Krish');
   insert into pytest.Table_A values(4,'Krishna');

   insert into pytest.Table_B values(null,'A');
   insert into pytest.Table_B values(null,'A');
   insert into pytest.Table_B values(1,'X');
   insert into pytest.Table_B values(2,'B');
   insert into pytest.Table_B values(4,'A');
   insert into pytest.Table_B values(3,'E');
  
--select statements 
  select * from pytest.Table_A; 
  select * from pytest.Table_B; 

 -- "the LEFT JOIN command returns all rows from the left table and the matching rows from the right table. The result is NULL from the right side if there is no match."
 
  SELECT 
  A.ID,
  A.NAMES,
  B.ID,
  B.CODE
  FROM PYTEST.TABLE_A A
  LEFT JOIN PYTEST.TABLE_B B
  ON A.ID = B.ID

