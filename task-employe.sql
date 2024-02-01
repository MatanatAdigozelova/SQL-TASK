create database Employee
create table Emloyees(
EmployeeId int primary key identity,
FirstName nvarchar(50),
LastName nvarchar(50),
Salary float,
JoiningDate datetime,
Departament nvarchar(50),
Gender nvarchar(10),
check (Gender in ('male' , 'female'))
)
select FirstName + ' '+ LastName AS 'FULL NAME'from Emloyees 
select * from Emloyees where FirstName like '%a%'
select * from Emloyees where FirstName like '[a-z]%'
select distinct Departament from Emloyees
select * from Emloyees where Salary=(select max(Salary) from Emloyees) 
select * from Emloyees where Salary=(select min(Salary) from Emloyees)
select * from Emloyees where JoiningDate between '2013-01-01 00:00:00' and '2013-12-01 00:00:00'
select count(*) as 'ALL EXSIST' from Emloyees
select top 1 * from Emloyees
select * from Emloyees where FirstName in('Vikas','Ashish','Nikhil')

select FirstName, CASE WHEN Gender = 'Male' THEN 'M'
WHEN Gender = 'Female' THEN 'F' END AS [Gender]
FROM Emloyees
select * from Emloyees where Salary>60000
select distinct  Departament,sum(Salary) as 'Group salary' from Emloyees group by Departament
select distinct  Departament,sum(Salary) as 'group salary 'from Emloyees group by Departament order by sum(Salary) asc



