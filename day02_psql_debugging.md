Today I practiced PostgreSQL using psql.
Faced issues with database switching (\c vs /c), unfinished commands (-# prompt), and table creation syntax.
This session helped me understand how psql handles context, errors, and cancellations.
Will fix and refactor queries next session.
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

postgres=# create database sql_practise;
CREATE DATABASE
postgres=# /c sql_practise;
ERROR:  syntax error at or near "/"
LINE 1: /c sql_practise;
        ^
postgres=# /c sql_practise
postgres-# create table patients (patient_ID serial primary key, name varchar(100), age (INT), gender varchar(10), diagnosis varchar(100));
ERROR:  syntax error at or near "/"
LINE 1: /c sql_practise
        ^
postgres=# insert into patients (name, age, gender, diagnosis) values('ravi kumar', 45, 'm', 'goiter'), ('harsh singh', 50, 'm', 'hypertension'), ('suresh patil', 40, 'm', 'UTI');
ERROR:  relation "patients" does not exist
LINE 1: insert into patients (name, age, gender, diagnosis) values('...
                    ^
postgres=# select* from patients
postgres-# select name, diagnosis from patients where age > 40;
ERROR:  syntax error at or near "select"
LINE 2: select name, diagnosis from patients where age > 40;
        ^
postgres=# select * from patients order by age desc;
ERROR:  relation "patients" does not exist
LINE 1: select * from patients order by age desc;
                      ^
postgres=# /d patients
postgres-# /q
postgres-#
