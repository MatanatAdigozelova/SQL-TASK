create database company
use company
create table Customer (

[Name] nvarchar(50),
Surname nvarchar (50),
Salary tinyint,
ID tinyint

)

INSERT INTO Customer ([Name], Surname, Salary, ID)
VALUES 
    ('John', 'Doe', 50000, 1),
    ('Alice', 'Smith', 60000, 2),
    ('Bob', 'Johnson', 45000, 3),
    ('Eva', 'Brown', 55000, 4),
    ('Charlie', 'Miller', 70000, 5),
    ('Sophia', 'Williams', 52000, 6),
    ('David', 'Jones', 48000, 7),
    ('Olivia', 'Taylor', 67000, 8),
    ('Michael', 'White', 59000, 9),
    ('Emma', 'Anderson', 51000, 10),
    ('William', 'Wilson', 53000, 11),
    ('Ava', 'Davis', 49000, 12),
    ('James', 'Moore', 72000, 13),
    ('Mia', 'Martin', 54000, 14),
    ('Benjamin', 'Hill', 61000, 15),
    ('Amelia', 'Clark', 58000, 16),
    ('Logan', 'Wright', 63000, 17),
    ('Ella', 'Turner', 46000, 18),
    ('Jackson', 'Cooper', 68000, 19),
    ('Grace', 'Baker', 50000, 20),
    ('Liam', 'Carter', 59000, 21);
ALTER TABLE Customer 
ALTER COLUMN ID bigint
UPDATE Customer
SET [Name] = 'Grace'
WHERE ID = 1;
select * from Customer 
delete from Customer where [Name]='Mia'

select * from Customer where salary=(select max(salary) from Customer)
select * from Customer where salary=(select min(salary) from Customer)
select * from Customer where  [Name] LIKE '%E%' AND salary> 60000
select * from Customer where  id in (1,3)

select * from Customer where [Name] like 'J%' AND Surname LIKE 'D%'
SELECT top 3 * FROM Customer
ORDER BY salary desc
SELECT top 2 * FROM Customer where salary <68000
ORDER BY salary desc
SELECT * FROM Customer
ORDER BY salary DESC
OFFSET 3 ROWS
FETCH NEXT 2 ROWS ONLY;

