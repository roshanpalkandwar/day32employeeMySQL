create database payroll_services1


use payroll_services1

create table employee_payroll1
(	
	id int identity primary key, 
	name Varchar(Max) not null,
	salary Decimal(18,3),
	startDate DateTime default GetDate()
	
)
select * from  employee_payroll1
insert into employee_payroll1(name,salary,startDate) Values('Anand',54555,GetDate())


