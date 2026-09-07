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


