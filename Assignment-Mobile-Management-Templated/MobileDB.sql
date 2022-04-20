Create database MobileDB 
go
--drop database MobileDB
--Using Database
use MobileDB
go
--Creating Table called Mobile
Create table Mobile(
Id int Primary key identity(1,1),
[Name] varchar(20),
[Description] varchar(20),
Price int
);
go

create procedure sp_AddMobile
(@name varchar(20),
@description varchar(20),
@price int)
As 
Begin
insert into Mobile Values(@name, @description, @price)
end
go

Create procedure sp_ViewAllMobiles
As
Begin
Select Id,[Name],[Description],Price from Mobile
End
go
execute sp_ViewAllMobiles

go

create table Manufacturer(
Id int Primary Key identity(1,1),
ManufacturedBy varchar(20)
)

go

insert into Manufacturer
values ('Samsung'),
       ('Apple'),
       ('LG'),
       ('OnePlus'),
       ('Motorola')
go

select * from Manufacturer
go

create procedure sp_GetManufacturer
as
Begin
select Id, ManufacturedBy from manufacturer
end
go
execute sp_GetManufacturer
go

Alter table Mobile
Add Manufacturer varchar(20)
go
select * from  Mobile
go

Alter procedure sp_AddMobile
@name varchar(20),
@description varchar(20),
@price int,
@manufacturedBy varchar(30)
as
begin
insert into Mobile values(@name, @description, @price, @manufacturedBy)
end
go

Alter procedure sp_ViewAllMobiles
as 
begin
select Id, [Name], [Description], Price, Manufactures from Mobile
end
go 
exec sp_ViewAllMobiles
