ALTER TABLE Customer CHANGE Address Addr char(50);
--also
ALTER TABLE Customer RENAME COLUMN Address TO Addr;

USE database_name;
COMMIT;
ROLLBACK;

ALTER TABLE EMPLOYEES DROP CONSTRAINT EMPLOYEES_PK;

ALTER TABLE EMPLOYEES DROP PRIMARY KEY;


CREATE TABLE contacts(
   contact_id INT GENERATED ALWAYS AS IDENTITY,
   customer_id INT,
   contact_name VARCHAR(255) NOT NULL,
   phone VARCHAR(15),
   email VARCHAR(100),
   PRIMARY KEY(contact_id),
   CONSTRAINT fk_customer
      FOREIGN KEY(customer_id) 
	  REFERENCES customers(customer_id)
);


SELECT columns
FROM table1 
INNER JOIN table2
ON table1.column = table2.column;


SELECT columns
FROM table1
LEFT [OUTER] JOIN table2
ON table1.column = table2.column;


SELECT columns
FROM table1
RIGHT [OUTER] JOIN table2
ON table1.column = table2.column;


SELECT columns
FROM table1
FULL [OUTER] JOIN table2
ON table1.column = table2.column;

SELECT ColumnName_1, 
       ColumnName_2, 
       ColumnName_N
FROM [Table_1]
     CROSS JOIN [Table_2]


SELECT ColumnName_1, 
       ColumnName_2, 
       ColumnName_N
FROM [Table_1],[Table_2]



SELECT column1 [, column2 ]
FROM table1 [, table2 ]
[WHERE condition]

UNION

SELECT column1 [, column2 ]
FROM table1 [, table2 ]
[WHERE condition]


