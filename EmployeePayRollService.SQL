#Master
Welcome to Employee payRoll Services...

##Creating a DataBase
Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database Employee_payroll_Service;	#creating a database
Query OK, 1 row affected (0.17 sec)

##to See created database by using 'show databses' query.
mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| employee_payroll_service |
| information_schema       |
| mysql                    |
| payroll_service          |
| performance_schema       |
| sakila                   |
| sys                      |
| testdb                   |
| vamsi                    |
| world                    |
+--------------------------+
10 rows in set (0.00 sec)

##Go to database created by using 'use employee_payroll_service';

mysql> use employee_payroll_service;
Database changed

#UC2--Ability to create employee payroll table int the employe payroll service database.

mysql> create table employee_payroll
    -> (
    -> id    int not null Auto_increment,
    -> name   varchar(100) not null,
    -> salary  Double not null,
    -> start   date not null,
    -> primary key (id)
    -> );
Query OK, 0 rows affected (1.61 sec)

#UC3-- CRUD operations.

mysql> insert into employee_payroll (name, salary, start ) values
    -> ('Vamsi', 1000000.00, '2019-10-23'),
    -> ('pooji', 2000000.00, '2020-05-10'),
    -> ('vamsikrishna', 3000000.00, '2021-10-10')
    -> ;
Query OK, 3 rows affected (0.21 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+----+--------------+---------+------------+
| id | name         | salary  | start      |
+----+--------------+---------+------------+
|  1 | Vamsi        | 1000000 | 2019-10-23 |
|  2 | pooji        | 2000000 | 2020-05-10 |
|  3 | vamsikrishna | 3000000 | 2021-10-10 |
+----+--------------+---------+------------+
3 rows in set (0.02 sec).

#UC4 ability to retrive data from database.
mysql> select * from employee_payroll;
+----+--------------+---------+------------+
| id | name         | salary  | start      |
+----+--------------+---------+------------+
|  1 | Vamsi        | 1000000 | 2019-10-23 |
|  2 | pooji        | 2000000 | 2020-05-10 |
|  3 | vamsikrishna | 3000000 | 2021-10-10 |
+----+--------------+---------+------------+
3 rows in set (0.02 sec).

#UC5 ability to retrive Particular data from database.
mysql> select salary from employee_payroll where name = 'vamsi';
+---------+
| salary  |
+---------+
| 1000000 |
+---------+
1 row in set (0.00 sec)

mysql> select name from employee_payroll where start between cast('2018-01-01' as date) and date(now());
+--------------+
| name         |
+--------------+
| Vamsi        |
| pooji        |
| vamsikrishna |
+--------------+
3 rows in set (0.00 sec)

mysql> select * from employee_payroll;
+----+--------------+--------+---------+------------+
| id | name         | gender | salary  | start      |
+----+--------------+--------+---------+------------+
|  1 | Vamsi        | NULL   | 1000000 | 2019-10-23 |
|  2 | pooji        | NULL   | 2000000 | 2020-05-10 |
|  3 | vamsikrishna | NULL   | 3000000 | 2021-10-10 |
+----+--------------+--------+---------+------------+
3 rows in set (0.00 sec).


