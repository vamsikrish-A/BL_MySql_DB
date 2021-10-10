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

