create database VVCET

create table batch1
(
Sid int,
Sname varchar(20),
Sage int,
Sdepartment varchar(10)
)

select * from batch1

insert into batch1 values(1,'Sangeetha',21,'ECE')
insert into batch1 values(2,'Kiruthika',22,'EEE')
insert into batch1 values(3,'Gayathri',21,'ECE')
insert into batch1 values(4,'Yuvaraj',23,'CSE')
insert into batch1 values(5,'Sadhish',22,'MECH')

update batch1 set Sdepartment = 'MECH' where Sid=4

select * from batch1

alter table batch1 add Scontact varchar(10)

update batch1 set Scontact = '9788894897' where sid=1
update batch1 set Scontact = '7273979628' where sid=3
update batch1 set Scontact = '7273934628' where sid=4
update batch1 set Scontact = '7273434628' where sid=2
update batch1 set Scontact = '7273234628' where sid=5

select * from batch1

UPDATE batch1 set Sage=24 where Sname='sadhish'
select * from batch1

delete from batch1 where Sid=4

insert into batch1 values(4,'Yuvaraj',50,'Robotic','6538725878')

truncate table batch1
drop table batch1
--New Table

create table Hakuna
(
 Eid int,
 Ename varchar(20)
 )

 select * from Hakuna

 alter table Hakuna add Eage varchar(10)
 alter table Hakuna add Econtact varchar(10)
 alter table Hakuna add Esalary varchar(10)

 insert into Hakuna values(1,'Sangeetha',21,'9234567891','20000')
 insert into Hakuna values(2,'kiruthika',23,'9232357891','13000') 
 insert into Hakuna values(3,'Gayathri',22,'9234523891','23000') 
 insert into Hakuna values(4,'Yuvaraj',50,'9234567812','29000')  

 select * from Hakuna
 
 insert into Hakuna values(5,'Sadhish',30,'9876543210','26000')
 insert into Hakuna values(6,'Sowmi',20,'9734543210','21000')

 delete from hakuna where Eid = 5

 update hakuna set Eid=5 where Ename = 'Sowmi'

 insert into Hakuna values(6,'Sadhish',30,'9876543210','26000')

 update hakuna set Eid=6 where Ename = 'Sowmi'
 update hakuna set Eid=5 where Ename = 'Sadhish'

 select * from Hakuna

 update Hakuna set Esalary = '10000' where Eage = 23

 update Hakuna set Esalary = '10000' where Eage = 22

 select * from Hakuna where Eage>20 AND  Esalary = '10000'

 select * from Hakuna where Esalary between '10000' and '20000'

 select * from Hakuna where Eid in (1,3,5)

 select * from Hakuna where Eid not in (1,3,5)

 select * from Hakuna where Ename like 's%'

 select * from Hakuna where Ename not like '%a'

 select * from Hakuna where Eid like '1%'

 select * from Hakuna where Ename  like '[sy]%'

 select * from Hakuna where Ename not like '%[aj]'

 select * from Hakuna where Ename  like '%a_'

 select * from Hakuna where Ename  like '%[sy]'

 select distinct Esalary from hakuna 
