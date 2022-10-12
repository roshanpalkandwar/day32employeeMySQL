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
insert into employee_payroll1(name,salary,startDate) Values('rita',54555,GetDate()),
                                                           ('rohit',16000,GETDATE()),
		                                                   ('somaya',17000,GETDATE()),
		                                                   ('Sonali',15000,GETDATE()),
	                                                    	('rakesh',20000,GETDATE()),
		                                                   ('vikas',25000,GETDATE()),
		                                                   ('Ankita',27000,GETDATE());	


alter table employee_payroll1 add Gender char(1)

UPDATE Employee_Payroll1
SET Gender = 'F' WHERE ID in (3,6,9);

UPDATE Employee_Payroll1
SET Gender = 'M' WHERE ID in (4,5,7,8);

select* 
from employee_payroll1

SELECT SUM(Salary) as TotalSalaryM FROM Employee_Payroll1
WHERE Gender = 'M' GROUP BY Gender;

SELECT SUM(Salary) as TotalSalaryF FROM Employee_Payroll1
WHERE Gender = 'F' GROUP BY Gender;

-------AVG() Function--------
SELECT AVG(Salary) as AvgSalaryM FROM Employee_Payroll1
WHERE Gender = 'M' GROUP BY Gender;

SELECT AVG(Salary) as AvgSalaryF FROM Employee_Payroll1
WHERE Gender = 'F' GROUP BY Gender;

-------MIN() Function--------
SELECT MIN(Salary) as MinSalaryM FROM Employee_Payroll1
WHERE Gender = 'M' GROUP BY Gender;

SELECT MIN(Salary) as MinSalaryF FROM Employee_Payroll1
WHERE Gender = 'F' GROUP BY Gender;

-------MAX() Function--------
SELECT MAX(Salary) as MaxSalaryM FROM Employee_Payroll1
WHERE Gender = 'M' GROUP BY Gender;

SELECT MAX(Salary) as MaxSalaryF FROM Employee_Payroll1
WHERE Gender = 'F' GROUP BY Gender;

-------COUNT() Function--------
SELECT COUNT(Salary) as CountSalaryM FROM Employee_Payroll1
WHERE Gender = 'M' GROUP BY Gender;

SELECT COUNT(Salary) as CountSalaryF FROM Employee_Payroll1
WHERE Gender = 'F' GROUP BY Gender;

alter table employee_payroll1 add Gender char(1)
alter table employee_payroll1 add phoneNumber Varchar(255) 
alter table employee_payroll1 add address Varchar(255) not null default 'TBD'
alter table employee_payroll1 add Department Varchar(255) not null default 'non-Def' 

exec sp_rename 'employee_payroll1.salary', 'Basic_pay', 'column'
alter table employee_payroll1 add Deductions Money 
alter table employee_payroll1 add Taxable_pay Money 
alter table employee_payroll1 add Tax Money 
alter table employee_payroll1 add NetPay Money 

select* 
from employee_payroll1



	create table Taxable
	(
		tax_id int not null default ('1') primary key,
		Deductions int not null,
		Taxable_Pay int not null ,
		tax int not null
		)
		insert into Taxable(tax_id,Deductions,Taxable_Pay,tax) values(453,4500,(40000-4500),0.05*(40000-4500));



select*
from Taxable


	create table PayrollDetails
	(
	Payroll_id int not null default ('01') Primary Key,
	Basic_Pay int not null,
	NetPay int not null,
	tax_id int not  null default ('1') foreign key references Taxable(tax_id)
	)
	insert into PayrollDetails(Payroll_id,Basic_Pay,NetPay,tax_id) values(21,40000,(40000-4500-0.05*35500),453);

select*
from PayrollDetails
	


	create table Contact_Details
	(
		name varchar(20) not null,
		phoneNumber varchar(12) not null,
		Address varchar(max) not null,
		Payroll_id int not null default ('01') foreign key references PayrollDetails(Payroll_id)
			
	)
	insert into Contact_Details(name,phoneNumber,Address,Payroll_id) values('bill','9834734334','pawansutnagar',21)


select*
from Contact_Details

select*
from Contact_Details
select*
from PayrollDetails
select*
from Taxable

SELECT Basic_Pay FROM PayrollDetails
WHERE  Payroll_id = 21





	


