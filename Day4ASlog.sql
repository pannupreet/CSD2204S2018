MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> show full tables;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show full tables;
+----------------------+------------+
| Tables_in_csd2204s18 | Table_type |
+----------------------+------------+
| customer             | BASE TABLE |
+----------------------+------------+
1 row in set (0.05 sec)

MariaDB [csd2204s18]> desc costumer;
ERROR 1146 (42S02): Table 'csd2204s18.costumer' doesn't exist
MariaDB [csd2204s18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('c01','ashlay','WDC,'3211200','34');
    '> insert into customer values ('c01','ashlay','WDC','3211200','34');
    '> insert into customer values ('c01','ashlay','ash','WDC','3211200','34');
    '> 
    '> \
    '> insert into customer values ('c01','ashlay','ash','WDC','3211200','34');
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '3211200','34');
insert into customer values ('c01','ashlay','WDC','3211200','34'' at line 1
MariaDB [csd2204s18]> insert into customer values('co1','ashley','ash','wdc','321200','34');
Query OK, 1 row affected (0.11 sec)

MariaDB [csd2204s18]> insert into customer values('co2','bob marley','bm','toronto','100100','23');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into customer values('co3','charlies theron','cher','newyork','120134','20');
Query OK, 1 row affected (0.01 sec)

MariaDB [csd2204s18]> insert into customer values('co4','deneil jack','dj','brazil','341020','25');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('co5','donna newman','new','toronto','130120','50');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('co6','eston m.','m.','toronto','201023','65');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('co7','bobby chacko','chak','newyork','320300','70');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> insert into customer values('co8','ashko charles','ak','usa','421044','72');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into customer values('co9','tony special','specie','gta','418921','62');
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> insert into customer values('c10','jack sp','sparrow','new jersey','102301','35');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,nickname from customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| jack sp         | sparrow  |
| ashley          | ash      |
| bob marley      | bm       |
| charlies theron | cher     |
| deneil jack     | dj       |
| donna newman    | new      |
| eston m.        | m.       |
| bobby chacko    | chak     |
| ashko charles   | ak       |
| tony special    | specie   |
+-----------------+----------+
10 rows in set (0.03 sec)

MariaDB [csd2204s18]> select city,postalCode from customer;
+------------+------------+
| city       | postalCode |
+------------+------------+
| new jersey | 102301     |
| wdc        | 321200     |
| toronto    | 100100     |
| newyork    | 120134     |
| brazil     | 341020     |
| toronto    | 130120     |
| toronto    | 201023     |
| newyork    | 320300     |
| usa        | 421044     |
| gta        | 418921     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name='ashley';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| co1    | ashley | ash      | wdc  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.06 sec)

MariaDB [csd2204s18]> select * from customer where name='ak';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where city !='toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| jack sp         | new jersey |
| ashley          | wdc        |
| charlies theron | newyork    |
| deneil jack     | brazil     |
| bobby chacko    | newyork    |
| ashko charles   | usa        |
| tony special    | gta        |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where city ='toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| bob marley   | toronto |
| donna newman | toronto |
| eston m.     | toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name>'ashlay';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name < 'donna';
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalCode | age  |
+--------+-----------------+----------+---------+------------+------+
| co1    | ashley          | ash      | wdc     | 321200     |   34 |
| co2    | bob marley      | bm       | toronto | 100100     |   23 |
| co3    | charlies theron | cher     | newyork | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil  | 341020     |   25 |
| co7    | bobby chacko    | chak     | newyork | 320300     |   70 |
| co8    | ashko charles   | ak       | usa     | 421044     |   72 |
+--------+-----------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name>'ashley';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer where age<'50';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
+--------+-----------------+----------+------------+------------+------+
5 rows in set (0.01 sec)

MariaDB [csd2204s18]> select * from customer where age>'50';
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| co6    | eston m.      | m.       | toronto | 201023     |   65 |
| co7    | bobby chacko  | chak     | newyork | 320300     |   70 |
| co8    | ashko charles | ak       | usa     | 421044     |   72 |
| co9    | tony special  | specie   | gta     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age='50';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| co5    | donna newman | new      | toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name='ashley' OR city='toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| ashley       | wdc     |
| bob marley   | toronto |
| donna newman | toronto |
| eston m.     | toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name='ashley' || city='toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| ashley       | wdc     |
| bob marley   | toronto |
| donna newman | toronto |
| eston m.     | toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city from customer where city='newyork' OR city='toronto';
+---------+
| city    |
+---------+
| toronto |
| newyork |
| toronto |
| toronto |
| newyork |
+---------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city='newyork' OR city='toronto';
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalCode | age  |
+--------+-----------------+----------+---------+------------+------+
| co2    | bob marley      | bm       | toronto | 100100     |   23 |
| co3    | charlies theron | cher     | newyork | 120134     |   20 |
| co5    | donna newman    | new      | toronto | 130120     |   50 |
| co6    | eston m.        | m.       | toronto | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork | 320300     |   70 |
+--------+-----------------+----------+---------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,age from customer city='toronto' AND age>'50';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='toronto' AND age>'50'' at line 1
MariaDB [csd2204s18]> select name,age from customer where city='toronto' AND age>'50';
+----------+------+
| name     | age  |
+----------+------+
| eston m. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city='tornto';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city='toronto';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| co2    | bob marley   | bm       | toronto | 100100     |   23 |
| co5    | donna newman | new      | toronto | 130120     |   50 |
| co6    | eston m.     | m.       | toronto | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) from customer where city='toronto';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.06 sec)

MariaDB [csd2204s18]> select count(*) "no of customers in toronto" from customer where city='toronto';
+----------------------------+
| no of customers in toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) "no of customers age>50" from customer where age>'50';
+------------------------+
| no of customers age>50 |
+------------------------+
|                      4 |
+------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) "no of customers age within 30 to 70" from customer where age>'30' AND age<'70';
+-------------------------------------+
| no of customers age within 30 to 70 |
+-------------------------------------+
|                                   5 |
+-------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select "list of customers age within 30 to 70" from customer where age>'30' AND age<'70';
+---------------------------------------+
| list of customers age within 30 to 70 |
+---------------------------------------+
| list of customers age within 30 to 70 |
| list of customers age within 30 to 70 |
| list of customers age within 30 to 70 |
| list of customers age within 30 to 70 |
| list of customers age within 30 to 70 |
+---------------------------------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * "list of customers age within 30 to 70" from customer where age>'30' AND age<'70';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"list of customers age within 30 to 70" from customer where age>'30' AND age<'70' at line 1
MariaDB [csd2204s18]> select *  from customer where age>'30' AND age<'70';
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| c10    | jack sp      | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley       | ash      | wdc        | 321200     |   34 |
| co5    | donna newman | new      | toronto    | 130120     |   50 |
| co6    | eston m.     | m.       | toronto    | 201023     |   65 |
| co9    | tony special | specie   | gta        | 418921     |   62 |
+--------+--------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select *  from customer where age between 30 to 70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'to 70' at line 1
MariaDB [csd2204s18]> select *  from customer where age between 30 AND 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| c10    | jack sp      | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley       | ash      | wdc        | 321200     |   34 |
| co5    | donna newman | new      | toronto    | 130120     |   50 |
| co6    | eston m.     | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko | chak     | newyork    | 320300     |   70 |
| co9    | tony special | specie   | gta        | 418921     |   62 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.03 sec)

MariaDB [csd2204s18]> select *  from customer where NOT age between 30 AND 70;
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalCode | age  |
+--------+-----------------+----------+---------+------------+------+
| co2    | bob marley      | bm       | toronto | 100100     |   23 |
| co3    | charlies theron | cher     | newyork | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil  | 341020     |   25 |
| co8    | ashko charles   | ak       | usa     | 421044     |   72 |
+--------+-----------------+----------+---------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select 'oldest customer';
+-----------------+
| oldest customer |
+-----------------+
| oldest customer |
+-----------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name, max(age) from customer;
+---------+----------+
| name    | max(age) |
+---------+----------+
| jack sp |       72 |
+---------+----------+
1 row in set (0.06 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select  max(age) from customer;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select  min(age) from customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select  avg(age) from customer;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name LIKE 'B%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| co2    | bob marley   | bm       | toronto | 100100     |   23 |
| co7    | bobby chacko | chak     | newyork | 320300     |   70 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer where name NOT LIKE 'B%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name  LIKE '%n';
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalCode | age  |
+--------+-----------------+----------+---------+------------+------+
| co3    | charlies theron | cher     | newyork | 120134     |   20 |
| co5    | donna newman    | new      | toronto | 130120     |   50 |
+--------+-----------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name  NOT LIKE '%n';
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| c10    | jack sp       | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley        | ash      | wdc        | 321200     |   34 |
| co2    | bob marley    | bm       | toronto    | 100100     |   23 |
| co4    | deneil jack   | dj       | brazil     | 341020     |   25 |
| co6    | eston m.      | m.       | toronto    | 201023     |   65 |
| co7    | bobby chacko  | chak     | newyork    | 320300     |   70 |
| co8    | ashko charles | ak       | usa        | 421044     |   72 |
| co9    | tony special  | specie   | gta        | 418921     |   62 |
+--------+---------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city LIKE'new';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city LIKE'new%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city LIKE'n%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.01 sec)

MariaDB [csd2204s18]> select * from customer where city LIKE'--n%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name LIKE'--n%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name LIKE'__n%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| co4    | deneil jack  | dj       | brazil  | 341020     |   25 |
| co5    | donna newman | new      | toronto | 130120     |   50 |
| co9    | tony special | specie   | gta     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name LIKE'__n_a%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| co5    | donna newman | new      | toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer LIMIT 4;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer LIMIT 2;
+--------+---------+----------+------------+------------+------+
| custId | name    | nickname | city       | postalCode | age  |
+--------+---------+----------+------------+------------+------+
| c10    | jack sp | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley  | ash      | wdc        | 321200     |   34 |
+--------+---------+----------+------------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age IN(20,25,65,70);
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalCode | age  |
+--------+-----------------+----------+---------+------------+------+
| co3    | charlies theron | cher     | newyork | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil  | 341020     |   25 |
| co6    | eston m.        | m.       | toronto | 201023     |   65 |
| co7    | bobby chacko    | chak     | newyork | 320300     |   70 |
+--------+-----------------+----------+---------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age NOT IN(20,25,65,70);
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| c10    | jack sp       | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley        | ash      | wdc        | 321200     |   34 |
| co2    | bob marley    | bm       | toronto    | 100100     |   23 |
| co5    | donna newman  | new      | toronto    | 130120     |   50 |
| co8    | ashko charles | ak       | usa        | 421044     |   72 |
| co9    | tony special  | specie   | gta        | 418921     |   62 |
+--------+---------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city IN(;toronto','newyork','usa','gta');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
    '> select * from customer where city IN(;toronto','wdc','usa','gta');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'toronto','newyork','usa','gta');
select * from customer where city IN(;toronto',' at line 1
MariaDB [csd2204s18]> select * from customer where city IN(toronto','wdc','usa','gta');
    '> select * from customer where city IN('toronto','wdc','usa','gta');
    '> \c
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '','wdc','usa','gta');
select * from customer where city IN('toronto','wdc','usa'' at line 1
MariaDB [csd2204s18]> select * from customer where city IN ('toronto','usa','gta'); 
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| co2    | bob marley    | bm       | toronto | 100100     |   23 |
| co5    | donna newman  | new      | toronto | 130120     |   50 |
| co6    | eston m.      | m.       | toronto | 201023     |   65 |
| co8    | ashko charles | ak       | usa     | 421044     |   72 |
| co9    | tony special  | specie   | gta     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select DISTINCT(city) 'uunique cities' from customer;
+----------------+
| uunique cities |
+----------------+
| new jersey     |
| wdc            |
| toronto        |
| newyork        |
| brazil         |
| usa            |
| gta            |
+----------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(DISTINCT(city)) 'uunique cities' from customer;
+----------------+
| uunique cities |
+----------------+
|              7 |
+----------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer ORDER BY name;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer ORDER BY DESC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DESC' at line 1
MariaDB [csd2204s18]> select * from customer ORDER BY name DESC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| co9    | tony special    | specie   | gta        | 418921     |   62 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer ORDER BY age DESC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| co8    | ashko charles   | ak       | usa        | 421044     |   72 |
| co7    | bobby chacko    | chak     | newyork    | 320300     |   70 |
| co6    | eston m.        | m.       | toronto    | 201023     |   65 |
| co9    | tony special    | specie   | gta        | 418921     |   62 |
| co5    | donna newman    | new      | toronto    | 130120     |   50 |
| c10    | jack sp         | sparrow  | new jersey | 102301     |   35 |
| co1    | ashley          | ash      | wdc        | 321200     |   34 |
| co4    | deneil jack     | dj       | brazil     | 341020     |   25 |
| co2    | bob marley      | bm       | toronto    | 100100     |   23 |
| co3    | charlies theron | cher     | newyork    | 120134     |   20 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer ORDER BY age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| co8    | ashko charles | ak       | usa  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer ORDER BY age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| co8    | ashko charles | ak       | usa  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select * from customer ORDER BY age DESC LIMIT 2;
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| co8    | ashko charles | ak       | usa     | 421044     |   72 |
| co7    | bobby chacko  | chak     | newyork | 320300     |   70 |
+--------+---------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from (SELECT * from customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1;
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| co7    | bobby chacko | chak     | newyork | 320300     |   70 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from customer order bt age ASC LIMIT 2) AS t order by age DESC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'bt age ASC LIMIT 2) AS t order by age DESC LIMIT 1' at line 1
MariaDB [csd2204s18]> select * from (select * from customer order by age ASC LIMIT 2) AS t order by age DESC LIMIT 1;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| co2    | bob marley | bm       | toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> exit
