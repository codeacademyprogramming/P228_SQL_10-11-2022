--Data Definition Language
--Database Yaranmasi Ucun Sorgu
CREATE DATABASE P228FirstQueryDB

--Database Silme Sorgusu
DROP DATABASE P228FirstQueryDB

--Database Isdifade Olunma Sorgusu
USE P228FirstQueryDB

--Table Yaratma Sorgusu
CREATE TABLE Students
(
	Id int,
	Name nvarchar(100),
	SurName nvarchar(100)
)

CREATE TABLE Groups
(
	Id int,
	Name nvarchar(100)
)

--Table Silinme Sorgusu
Drop Table Groups

--Table Uzerinde Deyisiklik Colum Elave Olunma Sorgusu
ALTER Table Groups 
Add Limit int

--Table Uzerinde Deyisiklik Colum Silinme Sorgusu
ALTER Table Groups 
Drop Column Limit

--Table Uzerinde Deyisiklik Colum Uzerinde Deyisiklik Sorgusu
ALTER TABLE Groups 
Alter Column Limit nvarchar(100)


--Data Manipulation Language
--Table-a Data Elave Olunmasi Sorgusu
Insert Into Groups 
Values
(1,'P228','18')

Insert Into Groups 
Values
(4,'P230','18'),
(5,'P134','15'),
(6,'P231','12'),
(7,'D228','18'),
(8,'C133','15'),
(9,'F229','12'),
(10,'W228','18'),
(11,'Z133','15'),
(12,'Q229','12')

Insert Into Groups(Id) 
Values
(1),
(2),
(3)

Insert Into Groups(Name,Id) 
Values
('P225',1),
('P314',2),
('P129',3)

Insert Into Groups(Limit) 
Values
('225'),
('314'),
('129')

--Table-da Data Uzerinde Deysiklik Etmek Sorgusu
Update Groups set limit = '25' where Id = 1 

Update Groups set limit = '25' where Id = 1 And Name = 'p228' 

Update Groups set limit = '225' where Id = 1 OR Name = 'p228'

--Tabel-da Data Silinme Sorgusu
Delete Groups  Where id = 3

--Data Query Language
Select Id from Groups

Select * from Groups

Select Name, Limit from Groups

Select Limit, Id, Name from Groups

Select Name from Groups where limit = '12'

Select Name, limit from Groups where limit > '12'


Select (Name+' '+Limit) from Groups where limit = '12'

Select (Name+' '+Limit) as 'Ad Ve Limit' from Groups where limit = '12'

Select (Name+' '+Limit) 'Ad Ve Limit' from Groups where limit = '12'

Select (Name+' '+Limit) as [Ad Ve Limit] from Groups where limit = '12'

Select (Name+' '+Limit) [Ad Ve Limit] from Groups where limit = '12'

Select Name Ad,Limit Say from Groups where limit = '12'