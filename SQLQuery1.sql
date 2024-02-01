create database Shop
use Shop
create table Brands (
Id int primary key identity,
[Name] nvarchar(50)
)
insert into Brands ([Name])
values
    ('APPLE'),
    ('HP'),
    ('SAMSUNG'),
    ('ACER'),
    ('LENOVO')

	create table Notebooks(
	Id int primary key identity,
	NoteName nvarchar(50),
	Price int,
	)
	insert into Notebooks(NoteName, Price)
	values
	('Dell XPS 13', 1200),
    ('MacBook Air', 1000),
    ('HP Spectre x360', 1300),
    ('Lenovo ThinkPad X1 Carbon', 1500),
    ('Asus ZenBook 14', 900),
    ('Acer Swift 3', 800),
    ('Microsoft Surface Laptop 4', 1100),
    ('LG Gram 17', 1600),
    ('Samsung Galaxy Book Pro', 1400),
    ('Sony VAIO S', 950),
    ('Razer Blade Stealth', 1700),
    ('Google Pixelbook Go', 1200),
    ('Huawei MateBook X Pro', 1300),
    ('Toshiba Portege X30', 1000),
    ('Fujitsu Lifebook U939X', 1100);


	create table Phones(
    Id int primary key identity,
	PhoneName nvarchar(50),
	Price int,

	)
	ALTER TABLE PHONES
	
	add  PhoneName nvarchar(50)
	INSERT INTO Phones (PhoneName, Price)
    VALUES 
    ('iPhone 13 Pro', 1200),
    ('Samsung Galaxy S21', 1000),
    ('Google Pixel 6', 800),
    ('OnePlus 9 Pro', 1100),
    ('Xiaomi Mi 11', 900),
    ('Sony Xperia 1 III', 1300),
    ('LG Velvet', 700),
    ('Motorola Edge+', 1200),
    ('Huawei P50 Pro', 1300),
    ('Nokia 9 PureView', 600),
    ('Asus ROG Phone 5', 1100),
    ('OPPO Find X3 Pro', 1000),
    ('Realme GT', 800),
    ('Lenovo Legion Phone Duel 2', 1400),
    ('Vivo X60 Pro', 950);
	
	alter table Notebooks
	add BrandId int not null
	alter table NoteBooks
	add foreign key (BrandId) references Brands(Id)
	ALTER TABLE Notebooks
DROP CONSTRAINT FK__Notebooks__Brand__60A75C0F;

-- Drop the BrandId column
ALTER TABLE Notebooks
DROP COLUMN BrandId;






select * from Brands
select * from Notebooks
select * from Phones