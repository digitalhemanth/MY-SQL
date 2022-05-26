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

--The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.
  SELECT 
  A.ID,
  A.NAMES,
  B.ID,
  B.CODE
  FROM PYTEST.TABLE_A A
  RIGHT JOIN PYTEST.TABLE_B B
  ON A.ID = B.ID
  
  
  
  --Inner joins combine records from two tables whenever there are matching values in a field common to both tables.
  SELECT 
  A.ID,
  A.NAMES,
  B.ID,
  B.CODE
  FROM PYTEST.TABLE_A A
  INNER JOIN PYTEST.TABLE_B B
  ON A.ID = B.ID
  
  --Unlike INNER JOIN , a FULL JOIN returns all the rows from both joined tables, whether they have a matching row or not
  SELECT 
  A.ID,
  A.NAMES,
  B.ID,
  B.CODE
  FROM PYTEST.TABLE_A A
  FULL JOIN PYTEST.TABLE_B B
  ON A.ID = B.ID
  
  
  --A cross join is a type of join that returns the Cartesian product of rows from the tables in the join.
  SELECT 
  A.ID,
  A.NAMES,
  B.ID,
  B.CODE
  FROM PYTEST.TABLE_A A
  CROSS JOIN PYTEST.TABLE_B B

  
  
  
  