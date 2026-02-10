Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (18.1)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=#
postgres=# /c sql_practise
postgres-# \c sql_practise
You are now connected to database "sql_practise" as user "postgres".
sql_practise-# \dt
Did not find any tables.
sql_practise-# create table employees (emp_ID serial primary key, name varchar(50), department varchar(50), salary INT);
ERROR:  syntax error at or near "/"
LINE 1: /c sql_practise
        ^
sql_practise=# ;
sql_practise=# \dt
Did not find any tables.
sql_practise=# create table employees ( emp_ID serial primary key, name varchar(50), department varchar(50), salary INT);
CREATE TABLE
sql_practise=# /dt
sql_practise-# \dt
            List of tables
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | employees | table | postgres
(1 row)


sql_practise-# ;
ERROR:  syntax error at or near "/"
LINE 1: /dt
        ^
sql_practise=# insert into table employees (emp_ID, name, department, salary) VALUES (7702, 'christina', 'operations',1,50,000);
ERROR:  syntax error at or near "table"
LINE 1: insert into table employees (emp_ID, name, department, salar...
                    ^
sql_practise=# insert into employees (emp_ID, name, department, salary) VALUES (7702, 'christina', 'operations',1,50,000);
ERROR:  INSERT has more expressions than target columns
LINE 1: ..., salary) VALUES (7702, 'christina', 'operations',1,50,000);
                                                               ^
sql_practise=# insert into employees (emp_ID, name, department, salary) VALUES  (7702, 'christina', 'operations', '7LPA');
ERROR:  invalid input syntax for type integer: "7LPA"
LINE 1: ..., salary) VALUES  (7702, 'christina', 'operations', '7LPA');
                                                               ^
sql_practise=# insert into employees (emp_ID, name, department, salary) VALUES  (7702, 'christina', 'operations',70000);
INSERT 0 1
sql_practise=# INSERT INTO EMPLOYEES (EMP_ID, NAME, DEPARTMENT, SALARY) VALUES (8567, 'SHITAL', 'FINANCE', 40000), (9908, 'ASHA', 'NURSING', 30000), (7543, 'RIA', 'ADMIN', 65000), (3222, 'GEETA', 'NURSING', 30000);
INSERT 0 4
sql_practise=# SELECT * FROM EMPLOYEES
sql_practise-# ;
 emp_id |   name    | department | salary
--------+-----------+------------+--------
   7702 | christina | operations |  70000
   8567 | SHITAL    | FINANCE    |  40000
   9908 | ASHA      | NURSING    |  30000
   7543 | RIA       | ADMIN      |  65000
   3222 | GEETA     | NURSING    |  30000
(5 rows)


sql_practise=# SELECT * FROM EMPLOYEES WHERE DEPARTMENT ='NURSING':
sql_practise-# ;
ERROR:  syntax error at or near ":"
LINE 1: SELECT * FROM EMPLOYEES WHERE DEPARTMENT ='NURSING':
                                                           ^
sql_practise=# SELECT * FROM EMPLOYEES WHERE DEPARTMENT ='NURSING';
 emp_id | name  | department | salary
--------+-------+------------+--------
   9908 | ASHA  | NURSING    |  30000
   3222 | GEETA | NURSING    |  30000
(2 rows)


sql_practise=# SELECT (AVG) SALARY FROM EMPLOYEES;
ERROR:  column "avg" does not exist
LINE 1: SELECT (AVG) SALARY FROM EMPLOYEES;
                ^
sql_practise=# SELECT AVG(SALARY) FROM EMPLOYEES;
        avg
--------------------
 47000.000000000000
(1 row)


sql_practise=# SELECT DEPARTMENT FROM EMPLOYEES, COUNT(*) GROUP BY EMPLOYEES;
ERROR:  aggregate functions are not allowed in functions in FROM
LINE 1: SELECT DEPARTMENT FROM EMPLOYEES, COUNT(*) GROUP BY EMPLOYEE...
                                          ^
sql_practise=# SELECT DEPARTMENT, COUNT(*) FROM EMPLOYEES GROUP BY DEPARTMENT;
 department | count
------------+-------
 NURSING    |     2
 FINANCE    |     1
 ADMIN      |     1
 operations |     1
(4 rows)


sql_practise=# SELECT * FROM EMPLOYEES ORDER BY SALARY ASC;
 emp_id |   name    | department | salary
--------+-----------+------------+--------
   9908 | ASHA      | NURSING    |  30000
   3222 | GEETA     | NURSING    |  30000
   8567 | SHITAL    | FINANCE    |  40000
   7543 | RIA       | ADMIN      |  65000
   7702 | christina | operations |  70000
(5 rows)


sql_practise=# UPDATE EMPLOYEES SET DEPARTMENT ='CLINICAL' WHERE DEPARTMENT ='NURSING';
UPDATE 2
sql_practise=# SELECT * FROM EMPLOYEES;
 emp_id |   name    | department | salary
--------+-----------+------------+--------
   7702 | christina | operations |  70000
   8567 | SHITAL    | FINANCE    |  40000
   7543 | RIA       | ADMIN      |  65000
   9908 | ASHA      | CLINICAL   |  30000
   3222 | GEETA     | CLINICAL   |  30000
(5 rows)


sql_practise=# DELETE FROM EMPLOYEES WHERE EMP_ID= 7543;
DELETE 1
sql_practise=# SELECT * FROM EMPLOYEES;
 emp_id |   name    | department | salary
--------+-----------+------------+--------
   7702 | christina | operations |  70000
   8567 | SHITAL    | FINANCE    |  40000
   9908 | ASHA      | CLINICAL   |  30000
   3222 | GEETA     | CLINICAL   |  30000
(4 rows)


sql_practise=# SELECT * FROM EMPLOYEES WHERE SALARY >30000;
 emp_id |   name    | department | salary
--------+-----------+------------+--------
   7702 | christina | operations |  70000
   8567 | SHITAL    | FINANCE    |  40000
(2 rows)


sql_practise=# SELECT * FROM EMPLOYEES WHERE DEPARTMENT= 'FINANCE' OR DEPARTMENT='NURSING';
 emp_id |  name  | department | salary
--------+--------+------------+--------
   8567 | SHITAL | FINANCE    |  40000
(1 row)


sql_practise=# SELECT * FROM EMPLOYEES WHERE DEPARTMENT IN ('FINANCE', 'OPERATIONS', 'ADMIN');
 emp_id |  name  | department | salary
--------+--------+------------+--------
   8567 | SHITAL | FINANCE    |  40000
(1 row)


sql_practise=# SELECT* FROM EMPLOYEES WHERE UPPER(DEPARTMENT) IN ('FINANCE', 'OPERATIONS');
 emp_id |   name    | department | salary
--------+-----------+------------+--------
   7702 | christina | operations |  70000
   8567 | SHITAL    | FINANCE    |  40000
(2 rows)


sql_practise=# SELECT DEPARTMENT, COUNT(*) AS EMP_COUNT, FROM EMPLOYEES GROUP BY DEPARTMENT;
ERROR:  syntax error at or near "FROM"
LINE 1: SELECT DEPARTMENT, COUNT(*) AS EMP_COUNT, FROM EMPLOYEES GRO...
                                                  ^
sql_practise=# SELECT * FROM DEPARTMENT, COUNT(*) AS EMP_COUNT FROM EMPLOYEES GROUP BY DEPARTMENT;
ERROR:  syntax error at or near "FROM"
LINE 1: SELECT * FROM DEPARTMENT, COUNT(*) AS EMP_COUNT FROM EMPLOYE...
                                                        ^
sql_practise=# SELECT * DEPARTMENT, COUNT (*) AS EMP_COUNT FROM EMPLOYEES GROUP BY DEPATMENT;
ERROR:  syntax error at or near "DEPARTMENT"
LINE 1: SELECT * DEPARTMENT, COUNT (*) AS EMP_COUNT FROM EMPLOYEES G...
                 ^
sql_practise=# SELECT DEPARTMENT, COUNT(*) AS EMP_COUNT FROM EMPLOYEES GROUP BY DEPARTMENT;
 department | emp_count
------------+-----------
 CLINICAL   |         2
 FINANCE    |         1
 operations |         1
(3 rows)


sql_practise=# SELECT * FROM EMPLOYEES WHERE NAME LIKE 'A%';
 emp_id | name | department | salary
--------+------+------------+--------
   9908 | ASHA | CLINICAL   |  30000
(1 row)


sql_practise=# SELECT * FROM EMPLOYEES WHERE NAME LIKE '%TA%';
 emp_id |  name  | department | salary
--------+--------+------------+--------
   8567 | SHITAL | FINANCE    |  40000
   3222 | GEETA  | CLINICAL   |  30000
(2 rows)


sql_practise=# SELECT * FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 3;
 emp_id |   name    | department | salary
--------+-----------+------------+--------
   7702 | christina | operations |  70000
   8567 | SHITAL    | FINANCE    |  40000
   9908 | ASHA      | CLINICAL   |  30000
(3 rows)


sql_practise=# SELECT DISTINCT DEPARTMENT FROM EMPLOYEES;
 department
------------
 CLINICAL
 FINANCE
 operations
(3 rows)


sql_practise=#
