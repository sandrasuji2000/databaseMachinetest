1.machinetest1=# insert into tbl_stock values(1,'Mouse',10,500,1);
INSERT 0 1
machinetest1=# insert into tbl_stock values(2,'Keyboard',5,450,3);
INSERT 0 1
machinetest1=# insert into tbl_stock values(3,'Modem',10,1200,2);
INSERT 0 1
machinetest1=#insert into tbl_stock values(4,'Memory',100,1500,5);
INSERT 0 1
machinetest1=# insert into tbl_stock values(5,'Headphone',50,750,4);
INSERT 0 1
machinetest1=#insert into tbl_stock values(6,'Memory',2,3500,4);
INSERT 0 1
machinetest1=#select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |       500 |               1
               2 | Keyboard  |            5 |       450 |               3
               3 | Modem     |           10 |      1200 |               2
               4 | Memory    |          100 |      1500 |               5
               5 | Headphone |           50 |       750 |               4
               6 | Memory    |            2 |      3500 |               4
(6 rows)


2.machinetest1=# UPDATE tbl_stock SET int_price = int_price+1.50;
UPDATE 6
machinetest1=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(6 rows)


3.machinetest1=# select pk_int_stock_id,vchr_name,int_Quantity,int_Price,fk_int_supplier from tbl_stock where int_price > 1000;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
(3 rows)


4.machinetest1=# select pk_int_stock_id,vchr_name,int_Quantity,int_Price,fk_int_supplier from tbl_stock order by vchr_name asc;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1
(6 rows)


5.machinetest1=# select *from tbl_stock order by vchr_name asc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)


6.machinetest1=# select *from tbl_stock order by vchr_name desc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)


7.machinetest1=#select vchr_name,int_quantity,int_price,(int_quantity*int_price)as "int_quantity*int_price" from tbl_stock;
 vchr_name | int_quantity | int_price | int_quantity*int_price
-----------+--------------+-----------+------------------------
 Mouse     |           10 |     501.5 |                   5015
 Keyboard  |            5 |     451.5 |                 2257.5
 Modem     |           10 |    1201.5 |                  12015
 Memory    |          100 |    1501.5 |                 150150
 Headphone |           50 |     751.5 |                  37575
 Memory    |            2 |    3501.5 |                   7003
(6 rows)

8.machinetest1=# delete from tbl_stock where fk_int_supplier=5;
DELETE 1
machinetest1=#select *from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(5 rows)


9.machinetest1=# insert into tbl_dept values(1,'Computer Science','CS');
INSERT 0 1
machinetest1=# insert into tbl_dept values(2,'Electronics','EC');
INSERT 0 1
machinetest1=# insert into tbl_dept values(3,'Commerce','CC');
INSERT 0 1
machinetest1=# insert into tbl_dept values(4,'Arts','AR');
INSERT 0 1

machinetest1=# select *from tbl_dept;
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Science | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR
(4 rows)

