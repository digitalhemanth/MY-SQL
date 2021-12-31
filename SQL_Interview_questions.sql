--Write the query to find the employee record with the highest salary.
Select * from employee where salary =(select max(salary) from employee);

--write the query to find the 2nd highest salary in the employee table?

select 
Ex.id , 
Ex.emp_name, 
Ex.salary from (select id , emp_name, salary,
DENSE_RANK () OVER ( order by salary desc ) sal from pytest.emps ) Ex
where Ex.sal = 2;


--4. write the query to find the 2nd lowest salary in the employee table?

select 
Ex.id , 
Ex.emp_name, 
Ex.salary from (select id , emp_name, salary,
DENSE_RANK () OVER ( order by salary ) sal from pytest.emps ) Ex
where Ex.sal = 2;


--write the query to find the distinct domain from the email column


select substring(email from '@(.*)$') as domain, count(*)
from  pytest.emps
group by domain

SELECT distinct(split_part (email,'@',2) ) as domain_name FROM pytest.emps 

SELECT split_part (email,'@',2) as domain_name FROM pytest.emps group by domain_name


--Write the query to find the duplicate name and its frequency in the table,

select salary, count(*) from  pytest.emps
group by salary 
having count(*) > 1 

-- Write the query to remove the duplicates from a table without using a temporary table?

DELETE FROM table 
WHERE name IN (SELECT name FROM table GROUP BY name HAVING COUNT(*) > 1)
AND NOT id IN (SELECT min(id) FROM table GROUP BY name)


--Write the Query to find odd and even records from the table?
Select * from pytest.emps where (id % 2) = 0
Select * from pytest.emps where (id % 2) = 1

--Write a SQL query to create a new table with data and structure copied from another table, create an empty table with the same structure as some other table?
CREATE TABLE schema.newtable AS SELECT * FROM schema.oldtable;
CREATE TABLE schema.newtable AS ( SELECT * FROM schema.oldtable ) with no data;

--Write a SQL query to find the common records between two tables?
SELECT column_lists FROM table_name WHERE condition  
INTERSECT  
SELECT column_lists FROM table_name WHERE condition;  

--Write a SQL query to find the records that are present in one table but missing in another table?

Select * from table_one
Minus
Select * from table_two;

--How to write an SQL query to find students' names start with 'A'?

SELECT * FROM student WHERE stud_name like 'A%';  

--Write the SQL query to get the third maximum salary of an employee from a table named employees.
SELECT * FROM `employees` ORDER BY `salary` DESC LIMIT 1 OFFSET 2  

--What is the default ordering of data using the ORDER BY clause? How could it be changed?
SELECT expressions FROM tables    
WHERE conditions    
ORDER BY expression [ASC | DESC];   


-- What is the command used to fetch first 5 characters of the string?
Select SUBSTRING(StudentName,1,5) as studentname from student


--Which operator is used in query for pattern matching?
Select * from Student where studentname like 'a%'

Select * from Student where studentname like 'ami_'
