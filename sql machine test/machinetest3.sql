1.machinetest1=# select sum(int_quantity*int_price) as totalcost from tbl_stock;
 totalcost
-----------
  214015.5
(1 row)

2.machinetest1=#select sum(int_quantity) as total_no_product from tbl_stock;
 total_no_product
------------------
              177
(1 row)


3.

machinetest1=# select pk_int_stock_id,upper(vchr_name) as vchr_name,int_quantity,round(int_price) as int_price,fk_int_supplier from tbl_stock  GROUP BY pk_int_stock_id,vchr_name,int_quantity,int_price,fk_int_supplier;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               4 | MEMORY    |          100 |      1502 |               5
               6 | MEMORY    |            2 |      3502 |               4
               2 | KEYBOARD  |            5 |       452 |               3
               3 | MODERN    |           10 |      1202 |               2
               5 | HEADPHONE |           50 |       752 |               4
               1 | MOUSE     |           10 |       502 |               1
(6 rows)

4.machinetest1=# select count(distinct vchr_name) from tbl_stock;
 count
-------
     5
(1 row)



5.machinetest1=# select vchr_name,int_price from tbl_stock where int_price=(select max(int_price) from tbl_stock);
 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5
(1 row)



6.machinetest1=# insert into tbl_enrollment values(1,'40','1');
INSERT 0 1
machinetest1=# insert into tbl_enrollment values(2,'15','2');
INSERT 0 1
machinetest1=# insert into tbl_enrollment values(3,'10','3');
INSERT 0 1
machinetest1=# insert into tbl_enrollment values(4,'12','4');
INSERT 0 1
machinetest1=# insert into tbl_enrollment values(5,'60','5');
INSERT 0 1
machinetest1=# insert into tbl_enrollment values(6,'14','6');
INSERT 0 1
machinetest1=# insert into tbl_enrollment values(7,'200','7');
INSERT 0 1
machinetest1=# select * from tbl_enrollment;
 pk_int_enrollment_id | int_count | fk_int_class_id
----------------------+-----------+-----------------
                    1 |        40 |               1
                    2 |        15 |               2
                    3 |        10 |               3
                    4 |        12 |               4
                    5 |        60 |               5
                    6 |        14 |               6
                    7 |       200 |               7
(7 rows)

machinetest1=# select sum(int_count) from tbl_enrollment;
 sum
-----
 351
(1 row)

7.machinetest1=# insert into tbl_classes values(1,'CS100','1');
INSERT 0 1
machinetest1=# insert into tbl_classes values(2,'CS101','1');
INSERT 0 1
machinetest1=# insert into tbl_classes values(3,'CS102','1');
INSERT 0 1
machinetest1=# insert into tbl_classes values(4,'CS103','1');
INSERT 0 1
machinetest1=# insert into tbl_classes values(5,'EC200','2');
INSERT 0 1
machinetest1=# insert into tbl_classes values(6,'CC300','3');
INSERT 0 1
machinetest1=# insert into tbl_classes values(7,'AT400','4');
INSERT 0 1
machinetest1=# select * from tbl_classes;
 pk_int_class_id | vchr_class_name | fk_int_dept_id
-----------------+-----------------+----------------
               1 | CS100           |              1
               2 | CS101           |              1
               3 | CS102           |              1
               4 | CS103           |              1
               5 | EC200           |              2
               6 | CC300           |              3
               7 | AT400           |              4
(7 rows)
machinetest1=# select count(pk_int_class_id)as no_of_classes from tbl_classes;
 no_of_classes
---------------
             7



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







9.machinetest1=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modern    |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
               4 | Memory    |          100 |    1501.5 |               5
(6 rows)


machinetest1=# select concat(vchr_name,int_price) as product_price from tbl_stock;
 product_price
----------------
 Mouse501.5
 Keyboard451.5
 Modern1201.5
 Headphone751.5
 Memory3501.5
 Memory1501.5
(6 rows)

10.

machinetest1=# select tbl_student.name ,tbl_grade.course from tbl_student INNER JOIN tbl_grade on tbl_student.rollno=tbl_grade.rollno where tbl_grade.grade='A'  order by course;
  name   | course
---------+--------
 Akhil   | C
 Maya    | Java
 paul    | Java
 Maya    | PHP
 sandeep | PHP
(5 rows)


11.machinetest1=# select count(rollno) from tbl_grade where grade='B';
 count
-------
     4
(1 row)

12.
machinetest1=# select tbl_student.name, count(tbl_grade.course) as no_of_course from tbl_grade INNER JOIN tbl_student on tbl_student.rollno=tbl_grade.rollno group by tbl_student.name,tbl_student.rollno order by tbl_student.name;
  name   | no_of_course
---------+--------------
 Akhil   |            2
 Anoop   |            1
 Maya    |            3
 paul    |            2
 sandeep |            2
(5 rows)


13.machinetest1=# select tbl_student.name from tbl_student INNER JOIN tbl_grade on tbl_student.rollno=tbl_grade.rollno where tbl_grade.course='Java' and tbl_student.city='Bangalore' group by tbl_student.name  ;
 name
-------
 Anoop
 Maya
(2 rows)

14.machinetest1=# select tbl_grade.course, tbl_student.name from tbl_student INNER JOIN  tbl_grade on tbl_student.rollno=tbl_grade.rollno where name like'A%';
 course | name
--------+-------
 C      | Akhil
 Java   | Akhil
 Java   | Anoop
(3 rows)

15.machinetest1=# select name,date_part('year',age(dob))as age from tbl_student;
  name   | age
---------+-----
 Akhil   |  37
 Maya    |  35
 Anoop   |  32
 paul    |  31
 sandeep |  31
(5 rows)

16.
machinetest1=# select name,to_char(date_of_birth,'dd-Mon-yyy') from tbl_dob;
 name  |  to_char
-------+------------
 Name1 | 12-Dec-010
 Name2 | 23-Jan-010
(2 rows)




