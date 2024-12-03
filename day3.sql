create table employee(empId int,name varchar(10),dept varchar(10),salary int);
insert into employee values(1,'Arjun','BBA',15000);
insert into employee values(2,'Karan','Pharmacy',25000);
insert into employee values(3,'Ram','Marine',45000);
insert into employee values(4,'Seema','MBA',55000);
insert into employee values(5,'Moksh','CSE',65000);
insert into employee values(6,'Aman','Pharmacy',15000);
insert into employee values(7,'Riya','CSE',35000);
select * from employee;

create table department(dept varchar(10),empid int);
insert into department values('CSE',5);
insert into department values('BBA',1);
insert into department values('Marine',3);
select * from department;
insert into department values('MSc',11,104,60000);
alter table department add courseno int;
update department set courseno='101' where dept='CSE';
update department set courseno='102' where dept='BBA';
update department set courseno='103' where dept='Marine';
alter table department add salary int;
update department set salary=65000 where empid=5;
update department set salary=15000 where empid=1;
update department set salary=45000 where empid=3;
select dept from employee where empid=3;
select courseno from department where dept='CSE';
select * from employee where empid in(select empid from department where courseno=101);
select name from employee where dept in (select dept from department where courseno=102);
select name from employee where dept='Pharmacy';
select * from employee where dept not in (select dept from department where courseno=102);

select * from employee where salary < any (select salary from department where dept='CSE');
select * from employee where salary <= any (select salary from department where dept='CSE');
select * from employee where salary > any (select salary from department where dept='BBA');
select name from employee where dept='CSE';

select * from employee e where exists (select * from department d where e.dept=d.dept);
select name,dept from employee e where exists (select * from department d where e.dept=d.dept);
select * from employee e where not exists (select *from department d where e.dept=d.dept);
select dept,count(*) as numofstudents from employee group by dept;
select dept,count(*) from employee group by dept;
select dept,count(*) as numofstudents from employee group by dept having count(*)=2;
select dept,avg(salary) as averagesalary from department group by dept having avg(salary)>2000;
select dept,avg(salary) as averagesalary from department group by dept ;
alter table employee add marks int;
update employee set marks=98 where empid=1;
update employee set marks=89 where empid=2;
update employee set marks=79 where empid=3;
update employee set marks=94 where empid=4;
update employee set marks=89 where empid=5;
update employee set marks=100 where empid=6;
update employee set marks=88 where empid=7;
select dept,avg(marks) as averagesalary from employee group by dept having avg(marks)>88;

SELECT * FROM employee INNER JOIN department ON employee.dept = department.dept;
SELECT employee.empid,employee.name,department.courseno FROM employee INNER JOIN department ON employee.dept = department.dept;

SELECT * FROM employee LEFT JOIN department ON employee.dept = department.dept;

SELECT * FROM employee RIGHT JOIN department ON employee.dept = department.dept;

SELECT * FROM employee LEFT JOIN department ON employee.dept = department.dept where department.empid is null;

SELECT * FROM employee FULL JOIN department ON employee.dept = department.dept;














