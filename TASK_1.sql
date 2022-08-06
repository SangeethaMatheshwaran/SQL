CREATE DATABASE ORG1
SHOW DATABASES;
USE ORG1;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME VARCHAR(25),
	LAST_NAME VARCHAR(25),
	SALARY INT ,
	JOINING_DATE DATETIME,
	DEPARTMENT VARCHAR(25)
);

INSERT INTO Worker VALUES
        (101, 'Monika'  ,  'Arora' , 80000 , '08-05-2020 05:39:00', 'Admin'),
        (102, 'Niharika', 'varma'  , 300000, '08-05-2020 05:39:00', 'HR'),
        (103, 'Vishal'  , 'Singhal', 500000, '08-05-2020 05:39:00', 'Admin'),
        (104, 'Amithabh', 'Singh'  , 500000, '08-05-2020 05:39:00', 'Admin'),
        (105, 'Vivek'   , 'Ehati'  , 200000, '08-05-2020 05:39:00', 'Account'),
        (106, 'Vipul'   , 'Diwan'  , 75000 , '08-05-2020 05:39:00', 'Account'),
        (107, 'Satish'  , 'Kumar'  , 90000 , '08-05-2020 05:39:00', 'Admin'),
        (108, 'Geetika' , 'Chauhan', 90000 , '08-05-2020 05:39:00', 'HR')

select * from Worker

-- ANS 1
SELECT FIRST_NAME AS WORKER_NAME FROM Worker

-- ANS 2
SELECT UPPER (FIRST_NAME) FROM WORKER

-- ANS 3
SELECT DISTINCT DEPARTMENT FROM WORKER

--ANS 4
SELECT SUBSTRING(first_name,1,3) FROM WORKER

--ANS 5
SELECT DISTINCT len (DEPARTMENT) FROM WORKER

--ANS 6
select CONCAT(FIRST_NAME, ' ', LAST_NAME) as COMPLETE_NAME FROM WORKER

--ANS 7
SELECT * FROM WORKER WHERE FIRST_NAME in('vipul ','satish')

--ANS 8
SELECT * FROM WORKER WHERE DEPARTMENT='ADMIN'

--ANS 9
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%a'

--ANS 10
SELECT * FROM WORKER WHERE FIRST_NAME LIKE 'a%'