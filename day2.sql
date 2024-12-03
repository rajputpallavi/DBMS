create table student2(rollnumber dec(4) primary key, studentname varchar(20) not null, registerednumber dec(5) unique,
course varchar(10), totalmarks dec(3) default(100), marksobtained dec(3), check(marksobtained<=totalmarks));
select * from student2;
desc student2;
insert into student2 values(101,'Pallavi',1001,'BECSE',100,99);
insert into student2 values(102,'Neha',1002,'BECSE',100,98);
insert into student2 values(103,'Muskan',1003,'Bsc',100,97);
insert into student2 values(104,'Pavneet',1004,'MBA',100,96);
insert into student2 values(105,'Muskan',1005,'Bsc',100,97);
select * from student2 where course='Bsc';
alter table student2 add adhaar int;
update student2 set adhaar=12345 where rollnumber=101;
update student2 set adhaar=12346 where rollnumber=102;
update student2 set adhaar=12347 where rollnumber=103;
update student2 set adhaar=12348 where rollnumber=104;
update student2 set adhaar=12349 where rollnumber=105;
delete from student2 where rollnumber=105; 
select * from student2 where course='Bsc' and rollnumber=103;
