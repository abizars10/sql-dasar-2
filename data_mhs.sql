Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 33
Server version: 5.5.51 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database latihan2;
Query OK, 1 row affected (0.01 sec)

mysql> use latihan2;
Database changed
mysql> create table data_mhs
    -> (nim int (5) not null,
    -> nama varchar (15) not null,
    -> alamat varchar (15) not null);
Query OK, 0 rows affected (0.57 sec)
							Codingan di Notepad nya :
mysql> \. D:\Bahan Kuliah\data_mhs.sql			insert into data_mhs (nim, nama, alamat)
Query OK, 3 rows affected (0.11 sec)			values ("1234", "ari", "bekasi"), ("1235", "rio", "cikarang"), ("1236", "abizar", "cikarang");
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from data_mhs;
+------+--------+----------+
| nim  | nama   | alamat   |
+------+--------+----------+
| 1234 | ari    | bekasi   |
| 1235 | rio    | cikarang |
| 1236 | abizar | cikarang |
+------+--------+----------+
3 rows in set (0.00 sec)

mysql> \. D:\Bahan Kuliah\data_mhs.sql			update data_mhs set nama="rio", alamat="bekasi"
Query OK, 1 row affected (0.05 sec)			where nim="1235";
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from data_mhs;
+------+--------+----------+
| nim  | nama   | alamat   |
+------+--------+----------+
| 1234 | ari    | bekasi   |
| 1235 | rio    | bekasi   |
| 1236 | abizar | cikarang |
+------+--------+----------+
3 rows in set (0.00 sec)

mysql> \. D:\Bahan Kuliah\data_mhs.sql			delete from data_mhs where nim="1235";
Query OK, 1 row affected (0.48 sec)

mysql> \. D:\Bahan Kuliah\data_mhs.sql			select * from data_mhs;
+------+--------+----------+
| nim  | nama   | alamat   |
+------+--------+----------+
| 1234 | ari    | bekasi   |
| 1236 | abizar | cikarang |
+------+--------+----------+
2 rows in set (0.00 sec)

mysql> \. D:\Bahan Kuliah\data_mhs.sql			select * from data_mhs where nim="1236";
+------+--------+----------+
| nim  | nama   | alamat   |
+------+--------+----------+
| 1236 | abizar | cikarang |
+------+--------+----------+
1 row in set (0.00 sec)

mysql>							Note : "Setiap mencoding di notedap, save dahulu lalu coding alamat notepad nya di my sql". 