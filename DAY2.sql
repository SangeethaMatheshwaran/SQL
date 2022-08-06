create database ORG

create table Workers(
     Wid int,
	 First_name varchar(20),
	 Last_name varchar(20),
	 Salary int,
	 Joining_date datetime,
	 Department char(30)
	 )
select * from Workers

insert into Workers values(001, 'Monika'  , 'Arora'  , 100000 , '14-02-20 09.00.00', 'HR'   )
insert into Workers values(002, 'Niharika', 'Verma'  , 80000  , '14-06-11 09.00.00', 'Admin')
insert into Workers values(003, 'Vishal ' , 'Singhal', 300000 , '14-02-20 09.00.00', 'HR'   )
insert into Workers values(004, 'Amitabh' , 'Singh'  , 500000 , '14-02-20 09.00.00', 'Admin')
insert into Workers values(005, 'Vivek'   , 'Bhati'  , 500000 , '14-06-11 09.00.00', 'Admin')
insert into Workers values(006, 'Vipul'   , 'Diwan'  , 200000 , '14-06-11 09.00.00', 'Account')
insert into Workers values(007, 'Satish'  , 'Kumar'  , 75000  , '14-01-20 09.00.00', 'Account')
insert into Workers values(008, 'Geetika' , 'Chauhan', 90000  , '14-04-11 09.00.00', 'Admin'  )

