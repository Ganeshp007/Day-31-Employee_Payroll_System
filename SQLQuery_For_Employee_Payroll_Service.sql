create database payroll_service                -- Creating database 
select name from sys.databases                 -- Display all databases
use Payroll_Service                            -- Selecting database to throw queries
create table employee_payroll
(
  Id int NOT NULL Identity, 
  Name varchar(25) NOT NULL,
  start_date date
)

insert into employee_payroll values
('Ganesh Potdar','2022-08-11'),
('Aman','2021-05-30')

select * from employee_payroll