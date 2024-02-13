create database Shopping
use  Shopping

create table Customer (
Id int primary key identity,
[Name] nvarchar(50)

)
create table Orders(
Id int primary key,
[Data] date,
Amount float
)

alter table Orders
add foreign key (CustomerId) references Customer(Id)
alter table Customer
add Id int primary key identity
INSERT INTO Customer ([Name])
VALUES
    ('John Doe'),
    ('Alice Smith'),
    ('Bob Johnson'),
    ('Emily Brown'),
    ('Michael Wilson'),
    ('Sophia Davis'),
    ('Matthew Martinez'),
    ('Olivia Rodriguez'),
    ('William Taylor'),
    ('Emma Thomas'),
    ('James Lee'),
    ('Ava Harris'),
    ('Alexander Clark'),
    ('Mia Walker'),
    ('Daniel White');

INSERT INTO Orders (Id, [Data], Amount, CustomerId)
VALUES
    (1, '2023-12-01', 100.50, 1),
    (2, '2023-12-02', 200.25, 2),
    (3, '2023-12-03', 150.75, 3),
    (4, '2023-12-04', 75.30, 4),
    (5, '2023-12-05', 125.00, 5),
    (6, '2023-12-06', 300.00, 6),
    (7, '2023-12-07', 50.25, 7),
    (8, '2023-12-08', 175.50, 8),
    (9, '2023-12-09', 225.75, 9),
    (10, '2023-12-10', 95.30, 10),
    (11, '2023-12-11', 200.00, 11),
    (12, '2023-12-12', 120.00, 12),
    (13, '2023-12-13', 180.25, 13),
    (14, '2023-12-14', 150.75, 14),
    (15, '2023-12-15', 250.50, 15);
	select * from Orders
	select * from Customer
     --1
	select c.Id,c.[Name],o.[Data],o.Amount,o.CustomerId FROM Customer c
	left join Orders o on c.id=o.CustomerId
	select c.Id,c.[Name],o.[Data],o.Amount,o.CustomerId FROM Customer c
	join Orders o on c.id=o.CustomerId
	 --2
	 
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName NVARCHAR(100),
    ContactName NVARCHAR(100),
    Address NVARCHAR(255),
    City NVARCHAR(100),
    Phone NVARCHAR(20)
);


INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, [Address], City,  Phone)
VALUES
    (1, 'Supplier A', 'John Smith', 'Sales Manager', 'Anytown', '123-456-7890'),
    (2, 'Supplier B', 'Jane Doe', 'Marketing Director',  'Othertown',  '987-654-3210'),
    (3, 'Supplier C', 'David Johnson', 'Purchasing Manager',  'Anycity', '456-789-0123');


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);


INSERT INTO Products (ProductID, ProductName, SupplierID)
VALUES
    (1, 'Product 1', 1),
    (2, 'Product 2', 2),
    (3, 'Product 3', 3),
    (4, 'Product 4', 1),
    (5, 'Product 5', 2);


SELECT
    Products.ProductName,
    Suppliers.SupplierName,
    Suppliers.ContactName,
    Suppliers.[Address],
    Suppliers.City,
    Suppliers.Phone
FROM
    Products
INNER JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID;
	--3
	------------------------

CREATE TABLE Employees (
    Id int primary key ,
    EName NVARCHAR(50),
    JobTitle NVARCHAR(50),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(Id)
)

INSERT INTO Employees (Id, EName, JobTitle, ManagerID)
VALUES
    (1, 'John Doe', 'CEO', NULL),
    (2, 'Alice Smith', 'CFO', 1),
    (3, 'Bob Johnson', 'CTO', 1),
    (4, 'Emily Brown', 'Manager', 2),
    (5, 'Michael Wilson', 'Manager', 3),
    (6, 'Sophia Davis', 'Developer', 4),
    (7, 'Matthew Martinez', 'Developer', 4),
    (8, 'Olivia Rodriguez', 'Developer', 5),
    (9, 'William Taylor', 'Developer', 5)


SELECT
    e.EName AS Employee,
    e.JobTitle AS EmployeeJobTitle,
    m.EName AS Manager,
    m.JobTitle AS ManagerJobTitle
FROM
    Employees e
 JOIN
    Employees m ON e.ManagerID = m.Id;



	SELECT
    e.EName AS Employee,
    e.JobTitle AS EmployeeJobTitle,
    m.EName AS Manager,
    m.JobTitle AS ManagerJobTitle
FROM
    Employees e
  Left JOIN
    Employees m ON e.ManagerID = m.Id;
	--4-------
	--5
	SELECT C.Id,  C.Name,O.Data, O.Amount
FROM Customer C
INNER JOIN Orders O ON C.ID = O.CustomerId;
---6

  

  SELECT 
    P.ProductID,
    P.ProductName,
    O.ID,
    O.Data,
    O.Amount
FROM 
    Products P
FULL JOIN 
    Orders O ON P.ProductID = O.ID;


	---7
	
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY,
    StudentName NVARCHAR(100)
);


INSERT INTO Students ( StudentName)
VALUES
    ( 'John Doe'),
    ( 'Alice Smith'),
    ( 'Bob Johnson'),
    ( 'Emily Brown');


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(100,1),
    CourseName NVARCHAR(100)
);


INSERT INTO Courses ( CourseName)
VALUES
    ( 'Mathematics'),
    ( 'Science'),
    ( 'History');

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
SELECT * FROM Courses

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID)
VALUES
    (1, 1, 101),
    (2, 1, 102),
    (3, 2, 100),
    (4, 3, 101),
    (5, 4, 102),
    (6, 4, 100);


SELECT
    S.StudentID,
    S.StudentName,
    C.CourseName
FROM
    Students S
LEFT JOIN
    Enrollments E ON S.StudentID = E.StudentID
LEFT JOIN
    Courses C ON E.CourseID = C.CourseID;


	--8
	CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    Amount FLOAT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(Id)
);


INSERT INTO Sales (SaleID, CustomerID, Amount)
VALUES
    (101, 1, 100.50),
    (102, 2, 200.25),
    (103, 3, 150.75),
    (104, 1, 75.30),
    (105, 4, 125.00),
    (106, 2, 300.00),
    (107, 3, 50.25),
    (108, 4, 175.50),
    (109, 1, 225.75),
    (110, 2, 95.30),
    (111, 3, 200.00),
    (112, 4, 120.00),
    (113, 1, 180.25),
    (114, 2, 150.75),
    (115, 3, 250.50);

	SELECT
    C.ID,
    C.Name,
    COALESCE(SUM(S.Amount), 0) AS TotalSalesAmount
FROM
    Customer C
LEFT JOIN
    Sales S ON C.ID = S.CustomerID
GROUP BY
    C.ID, C.Name;




	