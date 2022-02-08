SQL> ed
Wrote file afiedt.buf

  1  select empno, ename, job, mgr, hiredate, sal, comm, deptno
  2  from (
  3    select emp.*, dense_rank() over (partition by deptno order by sal desc) as rnk
  4    from emp
  5    )
  6* where rnk <= 3
SQL> /

     EMPNO ENAME      JOB              MGR HIREDATE                    SAL       COMM     DEPTNO
---------- ---------- --------- ---------- -------------------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-1981 00:00:00       5000                    10
      7782 CLARK      MANAGER         7839 09-JUN-1981 00:00:00       2450                    10
      7934 MILLER     CLERK           7782 23-JAN-1982 00:00:00       1300                    10
      7788 SCOTT      ANALYST         7566 19-APR-1987 00:00:00       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-1981 00:00:00       3000                    20
      7566 JONES      MANAGER         7839 02-APR-1981 00:00:00       2975                    20
      7876 ADAMS      CLERK           7788 23-MAY-1987 00:00:00       1100                    20
      7698 BLAKE      MANAGER         7839 01-MAY-1981 00:00:00       2850                    30
      7499 ALLEN      SALESMAN        7698 20-FEB-1981 00:00:00       1600        300         30
      7844 TURNER     SALESMAN        7698 08-SEP-1981 00:00:00       1500          0         30



      A primary key is a column or a set of columns in a table whose values uniquely identify a row in the table. ...
      A foreign key is a column or a set of columns in a table whose values correspond to the values of the primary key in another table.


ROWNUM:

Oracle engine maintains the number of each record inserted by users in table.
Rownum generates sequence number for each record each record inserted by users in table.


SELECT ROWID, ROWNUM,empno
FROM EMP1 WHERE ROWNUM <=4;


Rowid

ROWID is a pseudo column in a table which store and return row address in HEXADECIMAL format with database tables.
ROWID is the permanent unique identifiers for each row in the database.

SELECT rowid,empno FROM EMP1;


ROW_NUMBER()

ROW_NUMBER is an analytical function that assigns a number to each row according to its ordering within a group of rows.

SELECT EMPNO,
       ROWID,
       ROWNUM,
       ROW_NUMBER() OVER(ORDER BY MGR) 
FROM EMP1 
ORDER BY MGR;

What is difference between bucketing and partitioning?

Bucketing decomposes data into more manageable or equal parts. With partitioning,
there is a possibility that you can create multiple small partitions based on column values. 
If you go for bucketing, you are restricting number of buckets to store the data. This number is defined during table creation scripts.