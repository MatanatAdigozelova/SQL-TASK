create database Electronics
use Electronics

create table Brands(
Id int primary key identity,
[Name] nvarchar (50)
)
create table Notebooks(
Id int primary key identity,
NoteName nvarchar(50) unique,
Price float
)
create table Phones(
Id int primary key identity,
PhoneName nvarchar(50) unique,
Price float
)

alter table Notebooks
add BrandsId int 
alter table Notebooks
add foreign key (BrandsId) references Brands(Id)
alter table Phones
add BrandsId int 
alter table Phones
add foreign key (BrandsId) references Brands(Id)
INSERT INTO Notebooks (NoteName, Price) 
VALUES
('Hp Pavilion G1', 899.99),
('Apple MacBook Air', 1299.00),
('Xiaomi MiBook Pro', 799.50),
('Asus ZenBook 14', 1099.75),
('Hp Envy X360', 1200.25),
('Apple MacBook Pro', 1799.99),
('Xiaomi RedmiBook 13', 699.00),
('Asus ROG Zephyrus G14', 1499.50),
('Hp Spectre x360', 1299.75),
('Apple MacBook 12', 999.00),
('Xiaomi Mi Notebook Air', 899.25),
('Asus VivoBook S15', 799.99),
('Hp Omen 15', 1499.00),
('Apple MacBook Pro 16', 2399.00),
('Xiaomi Mi Gaming Laptop', 1299.50);

INSERT INTO Phones (PhoneName, Price) 
VALUES
('Hp ElitePhone X1', 699.99),
('Apple iPhone 13', 1099.00),
('Xiaomi Mi 11', 799.50),
('Asus ZenFone 8', 899.75),
('Hp ProPhone 500', 499.25),
('Apple iPhone SE', 499.99),
('Xiaomi Redmi Note 10', 299.00),
('Asus ROG Phone 6', 1299.50),
('Hp SpectrePhone 300', 899.75),
('Apple iPhone 12 Mini', 699.00),
('Xiaomi Poco X3', 249.25),
('Asus ZenFone 7', 799.99),
('Hp EnvyPhone 450', 799.00),
('Apple iPhone 14 Pro', 1499.00),
('Xiaomi BlackShark 4', 1199.50);

select * from Notebooks
select * from Phones
select * from Brands
select Notebooks.NoteName,	Notebooks.Price, Brands.Name from Notebooks
Join Brands on Notebooks.BrandsId=Brands.Id
select Phones.PhoneName,	Phones.Price, Brands.Name from Phones
Join Brands on Phones.BrandsId=Brands.Id

SELECT * 
FROM Notebooks 
WHERE NoteName LIKE '%o%';
Select * From Notebooks 
Where Exists(select * from Brands 
where Id=Notebooks.BrandsId and [Name] like '%a%')

Select * From Notebooks  where 1000>price and price>500

Select * From Phones  where price between 500 and 1000


