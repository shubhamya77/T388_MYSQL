create database T388;
select 3*4 as multiply;
select 13/4 as quotient;

select 34!=67 as compare;
select database();

-- logical operators
select 1<2 and 13>5;
-- logical operatiors



use t388;
CREATE TABLE Employee (
 EmployeeId INT PRIMARY KEY,
 FullName VARCHAR(45) NOT NULL,
 Department VARCHAR(45) NOT NULL,
 Salary float NOT NULL,
 Gender VARCHAR(45) NOT NULL,
 Age INT NOT NULL
);

 
 
 
 
 select * from employee;
 insert into employee values
 (2005,"kausar","it","45000","female","20");
insert into employee values
 (2004,"vinay","hr","40000","male","20");
 
 
 delete from employee;
 INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

use t388;
show tables;
DELETE FROM EMPLOYEE WHERE GENDER ="MALE";
DELETE FROM EMPLOYEE WHERE AGE >25;
select * from employee;
TRUNCATE TABLE EMPLOYEE;
ALTER TABLE EMPLOYEE ADD Location varchar(10);

ALTER TABLE EMPLOYEE ADD Bonus float after salary;
ALTER TABLE EMPLOYEE ADD Title varchar(5) first;
desc employee;
alter table employee modify fullname varchar(35);

alter table employee change column location address varchar (36);

update employee set address ="Thane";
select * from employee; 
INSERT INTO Employee (EmployeeId ,
 FullName ,
 Department ,
 Salary ,
 Gender ,
 Age )values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

update employee set  address ="Dombovli" where department ="IT";
update employee set TITLE ="MR" where gender ="male";
update employee set TITLE ="MRs" where gender ="female";

update employee set bonus = salary*0.05;
select * from employee;

use t388;
create table kisan_info
(ID int unique not null,
NAME varchar(50) unique not null,
age int check (age>=18),
email_ID varchar(40) default "dummy@gmail.com");
desc kisan_info;
insert into kisan_info values
(2009,"rohan",18,default); 
select* from kisan_in fo;

alter table kisan_info modify age int check (age>=20);

select distinct department from employee;

select distinct gender  from employee;

select* from employee 
where department ="IT" or department ="Finance";

select* from employee 

WHERE DEPARTMENT IN ("It","Finance");


create database pizza_sales_analysis ;

show databases;

use  pizza_sales_analysis;


create table `order`(id int, date date );
select * from employee  where gender ="Male" order by department desc;

select * from employee limit 5;

select department,count(EmployeeID) from employee group by department;
select gender,count(EmployeeID) FROM employee group by gender;
select department,sum(salary) from employee group by department;
select department,avg(salary) from employee group by department;
select department,avg(salary),count(EmployeeID) FROM employee group by department;

-- Having clause (is always used with along with group by clause)
select department,count(*) from employee group by department having sum(salary) >150000;

select department,avg(age),count(*) from employee group by department having avg(age) <27;

CREATE TABLE Projects (
 ProjectId INT PRIMARY KEY AUTO_INCREMENT,   
ProjectName VARCHAR(200) NOT NULL,
 EmployeeId INT,
StartDate DATETIME,   
EndDate DATETIME
);

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select * from Projects;
select NOW();
select *,DATEDIFF(enddate, startdate) as Duration from Projects;
select * from projects where datediff(enddate, startdate)=45;

alter table projects add duration Int;
insert into projrcts(Duration) values(datediff(enddate - startdate);
UPDATE projects
set duration = DATEDIFF( ENDDATE,STARTDATE);
select duration, count(*) from projects group by duration;
select duration, count(*) 
from projects 
where duration>=20 
group by duration
having count(*) >= 2
order by duration desc
limit 2;
select duration 
from projects;
select * from employee limit 2,3;
ALTER TABLE `order` ADD time TIME AFTER `date`;


alter table `order` rename to orders;

alter table orders modify id int primary key;

use t388;
select distinct department from employee;
 select distinct gender from employee;
 
 
 -- is null or not null 
 select *from projects;
 select *from projects where employeeid is null;
select *from projects where employeeid is not null;

update projects set employeeid = 1003 where projectid =6;

-- IN , Between and Like
select * from employee;
select * from employee where age between 25 and 27;
select * from employee where employeeid between 1003 and 1007;
select * from employee where employeeid in ( 1003 ,1005, 1007 );

select * from employee where age in (23,28);
select * from employee where age in (23,28) and deparTment ="IT"; 
select * from employee where age in (23,28) and deparTment ="IT" and employeeid in (1000,1009);

-- LIKE
-- % EXPRESS "0" OR ANY NUMBER OF CHARECTERS.
use t388;
SELECT *FROM SIMPLE1;
DROP TABLE SIMPLE;
SELECT * FROM SIMPLE1 WHERE FULLNAME LIKE "A%";
SELECT * FROM SIMPLE1 WHERE FULLNAME LIKE "_U%";
SELECT * FROM SIMPLE1 WHERE FULLNAME LIKE "%AN%";
SELECT * FROM SIMPLE1 WHERE FULLNAME LIKE "A%T";

-- BUILT IN FUNCTION

SELECT AVG(SALARY) FROM EMPLOYEE;
SELECT MAX(SALARY) FROM EMPLOYEE;
SELECT MIN(SALARY) FROM EMPLOYEE;
SELECT SUM(SALARY) FROM EMPLOYEE;
SELECT COUNT(*) FROM EMPLOYEE;
SELECT COUNT(*) AS TOTAL_EMP,AVG(SALARY) AS AVERAGE,SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEE;

-- MATH FUNCTION
SELECT ABS(300-800);
SELECT ABS(6*(-7)
SELECT DATEDIFF(STARTDATE,ENDDATE) FROM PROJECTS;
SELECT CEIL(33.8);
SELECT FLOOR(33.8);
SELECT DATEDIFF(STARTDATE,ENDDATE) FROM PROJECTS;
SELECT truncate(123456.87654,0);
SELECT truncate(123456.87654,1);
SELECT truncate(123456.87654,-2);
use t388;

-- AUTO INCREMENT 
select exp(2);
select power(2,4);
select sqrt(144);
select*,sqrt(salary) from employee;

select concat("Good","Morning");
select concat("Good","Morning") as Remarks;
select*,concat(fullname,"_",department) as code from employee;


select * from employee;
alter table employee add EMAIL varchar(50);
update employee set EMAIL = concat(fullname,"@gmail.com");

select replace("Hello Everyone, Good Night" ,"Night","Morning") as statement;
select fullname,replace(fullname,"Mohanty","Patil") as changed from employee;

select fullname, length(fullname) from employee;

select substring("Maharashtra",1,3); 

select fullname, length(fullname) as Actual_Length,
ltrim(fullname) as lefttrim, length(ltrim(fullname)) as LTRIM_LENGTH,
rtrim(fullname) as Righttrim, length(rtrim(fullname)) as RTRIM_LENGTH,
trim(fullname),length(rtrim(fullname)) from trimmer;
select age from employee where  employeeid = 1002;

select age from employee where fullname ="Mary Smith";
select * from employee where age =(select age from employee where fullname ="Mary Smith");
select salary from employee where fullname ="John Doe";
select * from employee where department=(select department from employee where fullname ="John Doe");
select max(salary) from employee;
-- to show 2nd highest salary
select max(salary) from employee where salary < (select max(salary) from employee);

select max(salary) from employee where salary <(select max(salary) from employee where salary < (select max(salary) from employee));



 






