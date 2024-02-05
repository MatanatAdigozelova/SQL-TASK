create database Store
use Store
create table Categories(
Id int primary key identity,
[Name] nvarchar(50) unique
)
create table Products(
Id int primary key identity,
[Name] NVARCHAR (50) UNIQUE,
CategoryId int ,
SizeId int,
foreign key (CategoryId) references Categories(Id),
foreign key (SizeId) references Sizes(Id)
)
create table Stock(
ProductId int ,
ProductsId int,
CreateDate datetime default getdate(),
Count int,
foreign key (ProductsId) references Products(Id),
Size int,
foreign key (ProductId) references Products(Id),
foreign key (Size) references Sizes(Id)
)
create table Sizes(
Id inT primary key identity,
Letter nvarchar(2) check(Letter in('S','M','L', 'XL'))
)

-- Insert fake data into Categories table
INSERT INTO Categories ([Name]) VALUES ('Electronics');
INSERT INTO Categories ([Name]) VALUES ('Clothing');
INSERT INTO Categories ([Name]) VALUES ('Home Appliances');

-- Insert fake data into Sizes table
INSERT INTO Sizes (Letter) VALUES ('S');
INSERT INTO Sizes (Letter) VALUES ('M');
INSERT INTO Sizes (Letter) VALUES ('L');
INSERT INTO Sizes (Letter) VALUES ('XL');

-- Insert fake data into Products table
INSERT INTO Products ([Name], CategoryId, SizeId) VALUES ('Smartphone', 1, 1);
INSERT INTO Products ([Name], CategoryId, SizeId) VALUES ('Laptop', 1, 2);
INSERT INTO Products ([Name], CategoryId, SizeId) VALUES ('T-Shirt', 2, 3);
INSERT INTO Products ([Name], CategoryId, SizeId) VALUES ('Refrigerator', 3, 4);

-- Insert fake data into Stock table
INSERT INTO Stock (ProductsId, Count, SizeId) VALUES (1, 100, 1);
INSERT INTO Stock (ProductsId, Count, SizeId) VALUES (2, 50, 2);
INSERT INTO Stock (ProductsId, Count, SizeId) VALUES (3, 200, 3);
INSERT INTO Stock (ProductsId, Count, SizeId) VALUES (4, 10, 4);