create database payroll_service                -- Creating database 
select name from sys.databases                 -- Display all databases
use Payroll_Service                            -- Selecting database to throw queries
create table employee_payroll                  -- Creating table
(
  Id int NOT NULL Identity,                    --declaring variables
  Name varchar(25) NOT NULL,
  salary money,
  start_date date
)

--UC3 => Inserting value in table
insert into employee_payroll values             -- INserting records in Table
('Ganesh Potdar','1000000','2022-08-11'),
('Aman','800000','2021-05-30'),
('Mahesh','750000','2015-06-28'),
('Dinesh','550000','2015-11-18'),
('Komal','650000','2018-06-03'),
('Abhishek','708000','2020-05-31')

--UC4 => Retrieveing all records from table
select * from employee_payroll             -- Retriving all the record from table table

--UC5 => Getting salary of particular employee
select salary from employee_payroll where Name='Aman'   -- Display salaray of employee having name 'Aman'

--Retrieve Record of salary from table on basis Start_date 
select Name,salary from employee_payroll where start_date Between '2018-01-01' and GETDATE()

--UC6 => Adding Gender Attribute after Name Attribute in employee_payroll Table
alter table employee_payroll 
add gender char(1) NULL
update employee_payroll set gender='M' where Name in('Ganesh Potdar','Aman','Mahesh','Dinesh','Abhishek')
update employee_payroll set gender='F' where Name in('Komal')
select * from employee_payroll  
