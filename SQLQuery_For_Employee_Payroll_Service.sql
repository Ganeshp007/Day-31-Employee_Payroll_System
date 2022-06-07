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

insert into employee_payroll values             -- INserting records in Table
('Ganesh Potdar','1000000','2022-08-11'),
('Aman','800000','2021-05-30'),
('Mahesh','750000','2015-06-28')

select * from employee_payroll                  -- Displaying record in table