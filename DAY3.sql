create database SQLBATCH

--PARENT TABLE
create table locations
(
Branch_id int primary key not null,
location varchar(10),
Address varchar(20)
)

insert into locations (Branch_id,location,Address) values(1,'Erode','32A- ABC street')
insert into locations(Branch_id,location,Address) values(2,'Namakkal','45A- Solar street')
insert into locations (Branch_id,location,Address) values(3,'Chennai','13A- Gandhi street')

select * from locations

--CHILD TABLE

create table emp
(
Eid int,
Ename varchar(15),
Emailid varchar(20),
E_dept varchar(10),
Esalary int,
EBranch_id int foreign key references branch(branch_id)
)

select * from Emp

insert into emp values(1,'Sangeetha','msangeetha@gmail.com','ADMIN',18000,1)
insert into emp values(2,'Kiruthika','kiruthika@gamil.com','HR',15000,3)
insert into emp values(3,'Gayathri','gayathri@gmail.com','ADMIN',20000,1)
insert into emp values(4,'Yuvaraj','yuvaraj@gmail.com','TESTING',18000,2)
insert into emp values(5,'Sadhish','Sadhish@gmail.com','DEVELOPER',20000,2)
insert into emp values(6,'Sowmiya','Sowmiya@gmail.com','DEVELOPER',20000,2)
insert into emp values(7,'prasana','prasana@gmail.com','HR',30000,2)
insert into emp values(8,'udhaya','udhaya@gmail.com','HR',15000,2)

select * from locations
select * from Emp

--using AVG,MIN,MAX,COUNT,SUM
select avg(ESalary) as 'Average Salary' from emp
select min(ESalary) as 'Minimum Salary' from emp
select max(ESalary) as 'Maximum Salary' from emp
select count(ESalary) as 'Count Salary' from emp
select sum(ESalary) as 'Sum Salary' from emp

--USING GROUP BY CONCEPT
select avg(ESalary) as 'Average Salary',E_dept from emp group by E_dept
select min(ESalary) as 'Minimum Salary',E_dept from emp group by E_dept
select max(ESalary) as 'Maximum Salary',E_dept from emp group by E_dept
select sum(ESalary) as 'sum Salary',E_dept from emp group by E_dept

--USING HAVING (SPECIFIED) CONCEPT
select max(ESalary) as 'Average Salary',E_dept from emp group by E_dept having E_dept='admin'

--ORDER BY(ASC & DESC)
SELECT * FROM EMP ORDER BY ESALARY

SELECT * FROM EMP ORDER BY ESALARY DESC

SELECT * FROM EMP ORDER BY ESALARY ASC

SELECT * FROM EMP ORDER BY Ename DESC 

SELECT * FROM EMP ORDER BY ESALARY DESC,Ename ASC

--CREATE SYNONYM
create synonym E1 for emp
select * from emp
select * from E1

--DROP SYNONYM
 drop synonym if exists E1
 select * from E1

 --CREATE 3 TABLE
create table students
(
SID int primary key,
SName varchar(25) not null,
SDept int not null,
SClub int not null,
)


create table department
(
DID int primary key,
DeptName varchar(25) not null
)

create table SClub
(
CID int primary key,
ClubName varchar(25) not null
)

select * from students
select * from department
Select * from SClub

--INNER JOIN
select SID,SName,SDept,DeptName from students inner join department on SDept=DID

select students.SID, students.SName, students.SDept,department.DeptName from students inner join department on students.SDept= department.DID

select s.SID, s.SName, s.SDept,d.DeptName from students as S inner join department as d on s.SDept= d.DID

select s.SID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from students as s inner join SDept as d on s.SDept=d.DID inner join SClub as c on s.SClub=c.CID

select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s left join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s right join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s full join SDept as d on s.SDept=d.DID

select s.SID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from students as s left join SDept as d on s.SDept=d.DID full join SClub as c on s.SClub=c.CID

--IDENTITY
create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)

insert into sample values('Sangeetha')
insert into sample values('Mohan')
insert into sample values('kiruthi')

select * from sample

--SEQUENCES
--CREATE SEQUENCE
create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)

insert into sample1 values(NEXT VALUE FOR EMPID,'sangeetha')
insert into sample1 values(NEXT VALUE FOR EMPID,'Gaya')
insert into sample1 values(NEXT VALUE FOR EMPID,'Kiruthika')

select * from sample1

--ALTER SEQUENCE
alter sequence empid restart with 1 increment by 1
create table sample3
(
id int primary key ,
name varchar(20)
)
insert into sample3 values(NEXT VALUE FOR EMPID,'SANGEETHA')
insert into sample3 values(NEXT VALUE FOR EMPID,'MOHAN')
insert into sample3 values(NEXT VALUE FOR EMPID,'KIRUTHIKA')

SELECT * FROM sample3

select NEXT VALUE FOR EMPID
select * from students
create view Sports
as 
select * from students where SClub=200

select * from Sports

--COMPLEX VIEW
create view students_Dept
as
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID

select * from students_Dept