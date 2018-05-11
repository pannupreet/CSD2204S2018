MariaDB [(none)]> use database
ERROR 1049 (42000): Unknown database 'database'
MariaDB [(none)]> use databases
ERROR 1049 (42000): Unknown database 'databases'
MariaDB [(none)]> use database;
ERROR 1049 (42000): Unknown database 'database'
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

MariaDB [(none)]> use alayday3;
ERROR 1049 (42000): Unknown database 'alayday3'
MariaDB [(none)]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
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

MariaDB [(none)]> use alayday3;
ERROR 1049 (42000): Unknown database 'alayday3'
MariaDB [(none)]> use alayday3
ERROR 1049 (42000): Unknown database 'alayday3'
MariaDB [(none)]> use alay
Database changed
MariaDB [alay]> create table persons;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [alay]> create table persons(
    -> id int(3),
    -> lastname varchar(255) not null,
    -> firstname varchar(255)not null,
    -> age int(3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5
MariaDB [alay]> id int(3),
    -> lastname varchar(255) not null,
    -> firstname varchar(255)not null,
    -> age int(3),
    -> primary key(id,lastname));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'id int(3),
lastname varchar(255) not null,
firstname varchar(255)not null,
age i' at line 1
MariaDB [alay]> id int(3),
    -> lastname varchar(255) not null,
    -> firstname varchar(255) not null,
    -> age int(3),
    -> primary key
    -> 
    -> (id,lastname));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'id int(3),
lastname varchar(255) not null,
firstname varchar(255) not null,
age ' at line 1
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

MariaDB [(none)]> use alay
Database changed
MariaDB [alay]> create table persons
    -> (
    -> id integer(3),
    -> lastname varchar(255) not null,
    -> firstname varchar(255) not null,
    -> age integer(3),
    -> primary key(id,lastname));
Query OK, 0 rows affected (0.38 sec)

MariaDB [alay]> show table
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [alay]> show tables;
+----------------+
| Tables_in_alay |
+----------------+
| persons        |
+----------------+
1 row in set (0.00 sec)

MariaDB [alay]> create table order(
    -> orderid integer(3) not null,
    -> order number integer(3) not null,
    -> personid int(3),
    -> primary key (orderid),
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order(
orderid integer(3) not null,
order number integer(3) not null,
personid i' at line 1
MariaDB [alay]> create table order(
    -> orderid integer(3) not null,
    -> order number integer(3) not null,
    -> personid integer(3),;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order(
orderid integer(3) not null,
order number integer(3) not null,
personid i' at line 1
MariaDB [alay]> create table orderS(
    -> orderid integer(3) not null,
    -> order number integer(3) not null,
    -> personid integer(3),;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order number integer(3) not null,
personid integer(3),' at line 3
MariaDB [alay]> create table orderS(
    -> orderid integer(3) not null,
    -> order number integer(3) not null,
    -> personid integer(3),
    -> primary key (orderid),
    -> foreign key(personid) refrences persons(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order number integer(3) not null,
personid integer(3),
primary key (orderid),
fo' at line 3
MariaDB [alay]> create table orderS(
    -> orderid integer(3),
    -> ordernumber integer(3) not null,
    -> personid integer(3),
    -> primary key (orderid),
    -> foreign key(personid) refrences persons(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'refrences persons(id))' at line 6
MariaDB [alay]> create table orders(
    -> orderid integer(3),
    -> ordernumber integer(3) not null,
    -> personid integer(3),
    -> primary key (orderid),
    -> foreign key(personid) references persons(id));
Query OK, 0 rows affected (0.25 sec)

MariaDB [alay]> create table test1 
    -> ;;
ERROR 1113 (42000): A table must have at least 1 column
ERROR: No query specified

MariaDB [alay]> create table c1 
    -> ( id integer(5),
    -> name varchar(15));
Query OK, 0 rows affected (0.22 sec)

MariaDB [alay]> insert into c1 values(1,'aman');
Query OK, 1 row affected (0.03 sec)

MariaDB [alay]> insert into c1 values(2,'parm');
Query OK, 1 row affected (0.03 sec)

MariaDB [alay]> insert into c1 values(3,'aman2');
Query OK, 1 row affected (0.03 sec)

MariaDB [alay]> select* from c1;
+------+-------+
| id   | name  |
+------+-------+
|    1 | aman  |
|    2 | parm  |
|    3 | aman2 |
+------+-------+
3 rows in set (0.00 sec)

MariaDB [alay]> desc c1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | YES  |     | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.06 sec)

MariaDB [alay]> describe c1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | YES  |     | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> create table c2 as select*from c1;
Query OK, 3 rows affected (0.25 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> select* from c2;
+------+-------+
| id   | name  |
+------+-------+
|    1 | aman  |
|    2 | parm  |
|    3 | aman2 |
+------+-------+
3 rows in set (0.00 sec)

MariaDB [alay]> create table c3 as select id from c1;
Query OK, 3 rows affected (0.19 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> select* from c2;
+------+-------+
| id   | name  |
+------+-------+
|    1 | aman  |
|    2 | parm  |
|    3 | aman2 |
+------+-------+
3 rows in set (0.00 sec)

MariaDB [alay]> select* from c3;
+------+
| id   |
+------+
|    1 |
|    2 |
|    3 |
+------+
3 rows in set (0.00 sec)

MariaDB [alay]> desc c2;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | YES  |     | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> desc c1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | YES  |     | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> alter table c1 add primary key(id);
Query OK, 3 rows affected (0.56 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> desc c1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> create table c4 as select*from c1;
Query OK, 3 rows affected (0.17 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> desc c4;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | NO   |     | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> create table c5 like c1;
Query OK, 0 rows affected (0.22 sec)

MariaDB [alay]> desc c5;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> select* from c5;
Empty set (0.00 sec)

MariaDB [alay]> insert into c5 as select*from c1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'as select*from c1' at line 1
MariaDB [alay]> insert into c5 values(select*from c1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select*from c1)' at line 1
MariaDB [alay]> insert into c5 select*from c1;
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> select* from c5;
+----+-------+
| id | name  |
+----+-------+
|  1 | aman  |
|  2 | parm  |
|  3 | aman2 |
+----+-------+
3 rows in set (0.00 sec)

MariaDB [alay]> desc c5;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

MariaDB [alay]> alter table c5 modify column id varchar(55);
Query OK, 3 rows affected (0.66 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> show table c5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c5' at line 1
MariaDB [alay]> show table c5
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c5' at line 1
MariaDB [alay]> select * from c5;
+----+-------+
| id | name  |
+----+-------+
| 1  | aman  |
| 2  | parm  |
| 3  | aman2 |
+----+-------+
3 rows in set (0.00 sec)

MariaDB [alay]> desc c5;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(55) | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> alter table c5 change column name personame varchar(55);
Query OK, 3 rows affected (1.34 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> select * from c5;
+----+-----------+
| id | personame |
+----+-----------+
| 1  | aman      |
| 2  | parm      |
| 3  | aman2     |
+----+-----------+
3 rows in set (0.00 sec)

MariaDB [alay]> desc c5;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | varchar(55) | NO   | PRI | NULL    |       |
| personame | varchar(55) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> alter table customer drop column nickname;
ERROR 1146 (42S02): Table 'alay.customer' doesn't exist
MariaDB [alay]> alter table c5 drop column personname;
ERROR 1091 (42000): Can't DROP 'personname'; check that column/key exists
MariaDB [alay]> desc c5;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | varchar(55) | NO   | PRI | NULL    |       |
| personame | varchar(55) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

MariaDB [alay]> alter table c1 drop column name;
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [alay]> select * from c1;
+----+
| id |
+----+
|  1 |
|  2 |
|  3 |
+----+
3 rows in set (0.00 sec)

MariaDB [alay]> alter table c5 modify personname
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [alay]> alter table c5 modify personname varchar(50) not null;
ERROR 1054 (42S22): Unknown column 'personname' in 'c5'
MariaDB [alay]> alter table c5 modify personame varchar(50) not null;
Query OK, 3 rows affected (0.52 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> select * from c5;
+----+-----------+
| id | personame |
+----+-----------+
| 1  | aman      |
| 2  | parm      |
| 3  | aman2     |
+----+-----------+
3 rows in set (0.00 sec)

MariaDB [alay]> desc c5;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | varchar(55) | NO   | PRI | NULL    |       |
| personame | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> alter table c2 add primary(name);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(name)' at line 1
MariaDB [alay]> desc c2;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | YES  |     | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> desc c5;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | varchar(55) | NO   | PRI | NULL    |       |
| personame | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> alter table c5 add primary(personame);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(personame)' at line 1
MariaDB [alay]> alter table c2 add primary(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(id)' at line 1
MariaDB [alay]> alter table c2 add primary key (id);
Query OK, 3 rows affected (0.55 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> select * from c2;
+----+-------+
| id | name  |
+----+-------+
|  1 | aman  |
|  2 | parm  |
|  3 | aman2 |
+----+-------+
3 rows in set (0.00 sec)

MariaDB [alay]> desc c2;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | NO   | PRI | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> alter table c2 drop primary key;
Query OK, 3 rows affected (0.53 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [alay]> desc c2;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(5)      | NO   |     | NULL    |       |
| name  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [alay]> show databases;
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

MariaDB [alay]> use day3;
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
| A107    | bob marley | bm       | toronto    | 100100     |   23 |
| A108    | eston M.   | m        | toronto    | 130130     |   65 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
+---------+------------+----------+------------+------------+------+
11 rows in set (0.01 sec)

MariaDB [day3]> update c1 set city=toronto where ciy=nyc;
ERROR 1146 (42S02): Table 'day3.c1' doesn't exist
MariaDB [day3]> update c1 set city=toronto where ciy=nyc;
ERROR 1146 (42S02): Table 'day3.c1' doesn't exist
MariaDB [day3]> select * from c1;
ERROR 1146 (42S02): Table 'day3.c1' doesn't exist
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
| A107    | bob marley | bm       | toronto    | 100100     |   23 |
| A108    | eston M.   | m        | toronto    | 130130     |   65 |
| A109    | jack sp    | sparrow  | new jersey | 102301     |   35 |
| A110    | tom curse  | tom      | nyc        | 12015012   |   70 |
| A111    | sammy      | sam      | nyc        | 145414     |   70 |
+---------+------------+----------+------------+------------+------+
11 rows in set (0.00 sec)

MariaDB [day3]> update c1 set city=toronto where city IN ('toronto);'
    -> update c1 set city=toronto where city IN ('toronto');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'update c1 set city=toronto where city IN ('toronto')' at line 2
MariaDB [day3]> update c1 set city='canada' where city IN ('toronto');
ERROR 1146 (42S02): Table 'day3.c1' doesn't exist
MariaDB [day3]> update ccustomer set city='canada' where city IN ('toronto');
ERROR 1146 (42S02): Table 'day3.ccustomer' doesn't exist
MariaDB [day3]> update customer set city='canada' where city IN ('toronto');
Query OK, 2 rows affected (0.06 sec)
Rows matched: 2  Changed: 2  Warnings: 0

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
11 rows in set (0.02 sec)

MariaDB [day3]> create tablec1 as select * fom customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tablec1 as select * fom customer' at line 1
MariaDB [day3]> create tablec1 as select * from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tablec1 as select * from customer' at line 1
MariaDB [day3]> create table c1 as select * from customer;
Query OK, 11 rows affected (0.25 sec)
Records: 11  Duplicates: 0  Warnings: 0

MariaDB [day3]> select * from c1;
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

MariaDB [day3]> delete from c2;
ERROR 1146 (42S02): Table 'day3.c2' doesn't exist
MariaDB [day3]> delete from c1;
Query OK, 11 rows affected (0.05 sec)

MariaDB [day3]> select * from c1;
Empty set (0.00 sec)

MariaDB [day3]> update customer set cust_id=1 where age >=50;
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'
MariaDB [day3]> alter customer drop primary key(cust_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer drop primary key(cust_id)' at line 1
MariaDB [day3]> alter c1 drop primary key (cust_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c1 drop primary key (cust_id)' at line 1
MariaDB [day3]> alter c1 drop primary key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'c1 drop primary key' at line 1
MariaDB [day3]> alter table c1 modify
    -> 
    -> 
    -> exit;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'exit' at line 4
MariaDB [day3]> exit
