Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| payroll_service    |
| performance_schema |
| sakila             |
| sys                |
| testdb             |
| vamsi              |
| world              |
+--------------------+
9 rows in set (0.07 sec)

mysql> use payroll_service
Database changed
mysql> select database();
+-----------------+
| database()      |
+-----------------+
| payroll_service |
+-----------------+
1 row in set (0.00 sec)
#UC1
mysql> describe employee_payroll
    -> ;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int unsigned | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | NO   |     | NULL    |                |
| gender | char(2)      | YES  |     | NULL    |                |
| salary | double       | NO   |     | NULL    |                |
| start  | date         | NO   |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
5 rows in set (0.13 sec)

mysql> select * from employee_payroll;
+----+---------------+--------+---------+------------+
| id | name          | gender | salary  | start      |
+----+---------------+--------+---------+------------+
|  1 | VAMSI         | M      | 1000000 | 2018-01-03 |
|  2 | krishna       | F      |  100000 | 2019-02-03 |
|  3 | vamsi         | M      |  200300 | 2019-03-01 |
|  4 | vamsi krishna | M      | 3000200 | 2019-04-23 |
+----+---------------+--------+---------+------------+
4 rows in set (0.00 sec)

mysql> select salary from employee_payroll where name = 'vamsi';
+---------+
| salary  |
+---------+
| 1000000 |
|  200300 |
+---------+
2 rows in set (0.00 sec)