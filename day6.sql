Microsoft Windows [Version 10.0.16299.402]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\738059>cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| alay               |
| day3               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> use day3;
Database changed
MariaDB [day3]> select * from customer;
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A101    | Alay       | MAD      | north york | M32Z9      |   23 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 |
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A108    | eston M.   | m        | canada     | 130130     |   65 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
+---------+------------+----------+------------+------------+------+
11 rows in set (0.03 sec)

MariaDB [day3]> select * from customer order by name desc,city asc;
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A108    | eston M.   | m        | canada     | 130130     |   65 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 |
| A101    | Alay       | MAD      | north york | M32Z9      |   23 |
+---------+------------+----------+------------+------------+------+
11 rows in set (0.00 sec)

MariaDB [day3]> select * from customer  limit 3;
+---------+--------+----------+------------+------------+------+
| cust_id | name   | nickname | city       | postalcode | age  |
+---------+--------+----------+------------+------------+------+
| A101    | Alay   | MAD      | north york | M32Z9      |   23 |
| A102    | shivam | shiv     | scarbrough | M42B7      |   22 |
| A103    | suraj  | sd       | don mills  | M32Z9      |   23 |
+---------+--------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [day3]> select * from customer order by cust_id desc limit 3;;
+---------+-----------+----------+------------+------------+------+
| cust_id | name      | nickname | city       | postalcode | age  |
+---------+-----------+----------+------------+------------+------+
| A111    | sammy     | sam      | nyc        | 145414     |   70 |
| A110    | tom curse | tom      | nyc        | 12015012   |   70 |
| A109    | jack sp   | sparrow  | new jersey | 102301     |   35 |
+---------+-----------+----------+------------+------------+------+
3 rows in set (0.00 sec)

ERROR: No query specified

MariaDB [day3]> select * from customer order by cust_id asc limit 3;;
+---------+--------+----------+------------+------------+------+
| cust_id | name   | nickname | city       | postalcode | age  |
+---------+--------+----------+------------+------------+------+
| A101    | Alay   | MAD      | north york | M32Z9      |   23 |
| A102    | shivam | shiv     | scarbrough | M42B7      |   22 |
| A103    | suraj  | sd       | don mills  | M32Z9      |   23 |
+---------+--------+----------+------------+------------+------+
3 rows in set (0.00 sec)

ERROR: No query specified

MariaDB [day3]> select * from customer cust_id desc limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc limit 3' at line 1
MariaDB [day3]> select * from customer oder by desc where cust_id limit3;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'by desc where cust_id limit3' at line 1
ERROR: No query specified

MariaDB [day3]> select * from customer(selsct * from customer order by cust_id
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(selsct * from customer order by cust_id' at line 1
MariaDB [day3]> select * from customer group by city;
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A101    | Alay       | MAD      | north york | M32Z9      |   23 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 |
+---------+------------+----------+------------+------------+------+
9 rows in set (0.00 sec)

MariaDB [day3]> select city from customer group by city;
+------------+
| city       |
+------------+
| 20 graydon |
| canada     |
| don mills  |
| new jersey |
| north york |
| nyc        |
| scarbrough |
| vapi       |
| wdc        |
+------------+
9 rows in set (0.00 sec)

MariaDB [day3]> select count(city)"unique cities" from customer group by city;
+---------------+
| unique cities |
+---------------+
|             1 |
|             2 |
|             1 |
|             1 |
|             1 |
|             2 |
|             1 |
|             1 |
|             1 |
+---------------+
9 rows in set (0.05 sec)

MariaDB [day3]> select city,count(city)"unique cities" from customer group by city;
+------------+---------------+
| city       | unique cities |
+------------+---------------+
| 20 graydon |             1 |
| canada     |             2 |
| don mills  |             1 |
| new jersey |             1 |
| north york |             1 |
| nyc        |             2 |
| scarbrough |             1 |
| vapi       |             1 |
| wdc        |             1 |
+------------+---------------+
9 rows in set (0.00 sec)

MariaDB [day3]> select distinct(city) from customer;
+------------+
| city       |
+------------+
| north york |
| scarbrough |
| don mills  |
| 20 graydon |
| vapi       |
| wdc        |
| canada     |
| new jersey |
| nyc        |
+------------+
9 rows in set (0.02 sec)

MariaDB [day3]> select city,count(city)"no of customer" from customer group by city having city like'new%';
+------------+----------------+
| city       | no of customer |
+------------+----------------+
| new jersey |              1 |
+------------+----------------+
1 row in set (0.01 sec)

MariaDB [day3]> select city,count(city)"no of customer" from customer group by city having city like'n%';
+------------+----------------+
| city       | no of customer |
+------------+----------------+
| new jersey |              1 |
| north york |              1 |
| nyc        |              2 |
+------------+----------------+
3 rows in set (0.00 sec)

MariaDB [day3]> select city,count(city)"no of customer" from customer group by city having city like'n%' or city='scarbrough';
+------------+----------------+
| city       | no of customer |
+------------+----------------+
| new jersey |              1 |
| north york |              1 |
| nyc        |              2 |
| scarbrough |              1 |
+------------+----------------+
4 rows in set (0.00 sec)

MariaDB [day3]> select city,count(city)"no of customer" from customer group by city having count(city)>2;
Empty set (0.00 sec)

MariaDB [day3]> select city,count(city)"no of customer" from customer group by city having count(city)>1;
+--------+----------------+
| city   | no of customer |
+--------+----------------+
| canada |              2 |
| nyc    |              2 |
+--------+----------------+
2 rows in set (0.00 sec)

MariaDB [day3]> select city from customer where name regexp 'n$';
Empty set (0.06 sec)

MariaDB [day3]> select city from customer where name regexp 'y$';
+------------+
| city       |
+------------+
| north york |
| vapi       |
| wdc        |
| canada     |
| nyc        |
+------------+
5 rows in set (0.00 sec)

MariaDB [day3]> select from customer where name regexp 'y$';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from customer where name regexp 'y$'' at line 1
MariaDB [day3]> select * from customer where name regexp 'y$';
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A101    | Alay       | MAD      | north york | M32Z9      |   23 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
+---------+------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [day3]> select * from customer where name regexp '^..h';
+---------+--------+----------+------+------------+------+
| cust_id | name   | nickname | city | postalcode | age  |
+---------+--------+----------+------+------------+------+
| A106    | ashely | ash      | wdc  | 321200     |   34 |
+---------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [day3]> select * from customer where postalcode regexp '^[0-9]';
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A108    | eston M.   | m        | canada     | 130130     |   65 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
+---------+------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [day3]> select * from customer where nickname regexp'^a+';
+---------+--------+----------+------+------------+------+
| cust_id | name   | nickname | city | postalcode | age  |
+---------+--------+----------+------+------------+------+
| A106    | ashely | ash      | wdc  | 321200     |   34 |
+---------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [day3]> select * from customer where nickname regexp'^a?';
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A101    | Alay       | MAD      | north york | M32Z9      |   23 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 |
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A108    | eston M.   | m        | canada     | 130130     |   65 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
+---------+------------+----------+------------+------------+------+
11 rows in set (0.00 sec)

MariaDB [day3]> select * from customer where nickname regexp'^[a-z]';
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A101    | Alay       | MAD      | north york | M32Z9      |   23 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 |
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A108    | eston M.   | m        | canada     | 130130     |   65 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
+---------+------------+----------+------------+------------+------+
11 rows in set (0.00 sec)

MariaDB [day3]> select * from customer where city regexp'^.{4}';
+---------+------------+----------+------------+------------+------+
| cust_id | name       | nickname | city       | postalcode | age  |
+---------+------------+----------+------------+------------+------+
| A101    | Alay       | MAD      | north york | M32Z9      |   23 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 |
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 |
| A107    | bob marley | bm       | canada     | 100100     |   23 |
| A108    | eston M.   | m        | canada     | 130130     |   65 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
+---------+------------+----------+------------+------------+------+
8 rows in set (0.02 sec)

MariaDB [day3]> select * from customer where city regexp'^.{7}';
+---------+---------+----------+------------+------------+------+
| cust_id | name    | nickname | city       | postalcode | age  |
+---------+---------+----------+------------+------------+------+
| A101    | Alay    | MAD      | north york | M32Z9      |   23 |
| A102    | shivam  | shiv     | scarbrough | M42B7      |   22 |
| A103    | suraj   | sd       | don mills  | M32Z9      |   23 |
| A104    | vikas   | vicky    | 20 graydon | M32Z7      |   23 |
| A109    | jack sp | sparrow  | new jersey | 102301     |   35 |
+---------+---------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [day3]> select * from customer where city regexp'^.{10}';
+---------+---------+----------+------------+------------+------+
| cust_id | name    | nickname | city       | postalcode | age  |
+---------+---------+----------+------------+------------+------+
| A101    | Alay    | MAD      | north york | M32Z9      |   23 |
| A102    | shivam  | shiv     | scarbrough | M42B7      |   22 |
| A104    | vikas   | vicky    | 20 graydon | M32Z7      |   23 |
| A109    | jack sp | sparrow  | new jersey | 102301     |   35 |
+---------+---------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [day3]> select * from customer where city rlike'^.{10}';
+---------+---------+----------+------------+------------+------+
| cust_id | name    | nickname | city       | postalcode | age  |
+---------+---------+----------+------------+------------+------+
| A101    | Alay    | MAD      | north york | M32Z9      |   23 |
| A102    | shivam  | shiv     | scarbrough | M42B7      |   22 |
| A104    | vikas   | vicky    | 20 graydon | M32Z7      |   23 |
| A109    | jack sp | sparrow  | new jersey | 102301     |   35 |
+---------+---------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [day3]> select curdate;
ERROR 1054 (42S22): Unknown column 'curdate' in 'field list'
MariaDB [day3]> select curdate();
+------------+
| curdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.06 sec)

MariaDB [day3]> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:15:42 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [day3]> alter table customer add column dob date;
Query OK, 0 rows affected (0.47 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [day3]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cust_id    | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [day3]> update customer set dob='1991-01-10' where cust_id='a101';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> show customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer' at line 1
MariaDB [day3]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cust_id    | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [day3]> select * from customer;
+---------+------------+----------+------------+------------+------+------------+
| cust_id | name       | nickname | city       | postalcode | age  | dob        |
+---------+------------+----------+------------+------------+------+------------+
| A101    | Alay       | MAD      | north york | M32Z9      |   23 | 1991-01-10 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 | NULL       |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 | NULL       |
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 | NULL       |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 | NULL       |
| A106    | ashely     | ash      | wdc        | 321200     |   34 | NULL       |
| A107    | bob marley | bm       | canada     | 100100     |   23 | NULL       |
| A108    | eston M.   | m        | canada     | 130130     |   65 | NULL       |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 | NULL       |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 | NULL       |
| A111    | sammy      | sam      | nyc        | 145414     |   70 | NULL       |
+---------+------------+----------+------------+------------+------+------------+
11 rows in set (0.00 sec)

MariaDB [day3]> update customer set dob='1995-05-1' where cust_id='a102';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1995-06-15' where cust_id='a103';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1996-07-15' where cust_id='a104';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1997-08-09' where cust_id='a105';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1995-08-09' where cust_id='a106';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1996-03-09' where cust_id='a107';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1996-03-23' where cust_id='a108';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1997-10-23' where cust_id='a109';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1997-02-23' where cust_id='a110';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> update customer set dob='1995-005-11' where cust_id='a111';
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [day3]> select * from customer;
+---------+------------+----------+------------+------------+------+------------+
| cust_id | name       | nickname | city       | postalcode | age  | dob        |
+---------+------------+----------+------------+------------+------+------------+
| A101    | Alay       | MAD      | north york | M32Z9      |   23 | 1991-01-10 |
| A102    | shivam     | shiv     | scarbrough | M42B7      |   22 | 1995-05-01 |
| A103    | suraj      | sd       | don mills  | M32Z9      |   23 | 1995-06-15 |
| A104    | vikas      | vicky    | 20 graydon | M32Z7      |   23 | 1996-07-15 |
| A105    | jimmy      | jim      | vapi       | 1452502    |   22 | 1997-08-09 |
| A106    | ashely     | ash      | wdc        | 321200     |   34 | 1995-08-09 |
| A107    | bob marley | bm       | canada     | 100100     |   23 | 1996-03-09 |
| A108    | eston M.   | m        | canada     | 130130     |   65 | 1996-03-23 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 | 1997-10-23 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 | 1997-02-23 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 | 1995-05-11 |
+---------+------------+----------+------------+------------+------+------------+
11 rows in set (0.00 sec)

MariaDB [day3]> select name,dob,timestampdiff(day,dob,curdate())"age" from customer;
+------------+------------+------+
| name       | dob        | age  |
+------------+------------+------+
| Alay       | 1991-01-10 | 9986 |
| shivam     | 1995-05-01 | 8414 |
| suraj      | 1995-06-15 | 8369 |
| vikas      | 1996-07-15 | 7973 |
| jimmy      | 1997-08-09 | 7583 |
| ashely     | 1995-08-09 | 8314 |
| bob marley | 1996-03-09 | 8101 |
| eston M.   | 1996-03-23 | 8087 |
| jack sp    | 1997-10-23 | 7508 |
| tom curse  | 1997-02-23 | 7750 |
| sammy      | 1995-05-11 | 8404 |
+------------+------------+------+
11 rows in set (0.00 sec)

MariaDB [day3]> select name,dob,timestampdiff(year,dob,curdate())"age" from customer;
+------------+------------+------+
| name       | dob        | age  |
+------------+------------+------+
| Alay       | 1991-01-10 |   27 |
| shivam     | 1995-05-01 |   23 |
| suraj      | 1995-06-15 |   22 |
| vikas      | 1996-07-15 |   21 |
| jimmy      | 1997-08-09 |   20 |
| ashely     | 1995-08-09 |   22 |
| bob marley | 1996-03-09 |   22 |
| eston M.   | 1996-03-23 |   22 |
| jack sp    | 1997-10-23 |   20 |
| tom curse  | 1997-02-23 |   21 |
| sammy      | 1995-05-11 |   23 |
+------------+------------+------+
11 rows in set (0.00 sec)

MariaDB [day3]> select name,dob,timestampdiff(year,dob,curdate())"age" from customer where age=22;
+--------+------------+------+
| name   | dob        | age  |
+--------+------------+------+
| shivam | 1995-05-01 |   23 |
| jimmy  | 1997-08-09 |   20 |
+--------+------------+------+
2 rows in set (0.00 sec)

MariaDB [day3]> select name,dob,timestampdiff(year,dob,curdate())"age" from customer having age=22;
+------------+------------+------+
| name       | dob        | age  |
+------------+------------+------+
| suraj      | 1995-06-15 |   22 |
| ashely     | 1995-08-09 |   22 |
| bob marley | 1996-03-09 |   22 |
| eston M.   | 1996-03-23 |   22 |
+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [day3]> select name,dob,timestampdiff(year,dob,curdate())"age" from customer where timestampdiff(year,dob,curdate())=22;
+------------+------------+------+
| name       | dob        | age  |
+------------+------------+------+
| suraj      | 1995-06-15 |   22 |
| ashely     | 1995-08-09 |   22 |
| bob marley | 1996-03-09 |   22 |
| eston M.   | 1996-03-23 |   22 |
+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [day3]>