create database Agency
use Agency
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    Name VARCHAR(50) UNIQUE
);

-- Create Salaries table
CREATE TABLE Salaries (
    Id INT PRIMARY KEY ,
    Amount INT,
    Date DATE UNIQUE
);
alter table Salaries
drop column Id 

-- Create Employees table
CREATE TABLE Employees (
    Id INT PRIMARY KEY IDENTITY,
    Name VARCHAR(50),
    DepartmentId INT REFERENCES Departments(id),
    SalaryId INT UNIQUE REFERENCES Salaries(Id)
);
-- Insert fake data into Departments table
INSERT INTO Departments (name)
VALUES ('Marketing'), ('Finance'), ('Human Resources'), ('Sales'), ('IT'), ('Operations');

-- Insert fake data into Salaries table
INSERT INTO Salaries (Id ,Amount, [Date])
VALUES ( 4,47000, '2024-01-09'),
       ( 5,78000, '2024-01-07'),
       ( 6,55055, '2024-01-09');


select * from Departments
select * from Salaries
select * from Employees
insert into Employees
values 
('Ferid',2,1)
SELECT d.name AS DepartmentName, SUM(s.Amount) AS TotalSalary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.id
JOIN Salaries s ON e.SalaryID = s.id
GROUP BY d.name
having 100000<sum(s.Amount)
order by sum(s.Amount)  
