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


