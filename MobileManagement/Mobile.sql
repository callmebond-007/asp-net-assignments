Create database MobileDB 
go
--drop database EmployeeDB
--Using Database
use MobileDB
go
--Creating Table called Employee
Create table Mobile(
Id int identity(1,1),
[Name] varchar(20),
[Description] varchar(20),
ManufactureBy varchar(20),
Price int
);
go
 
create procedure sp_AddMobile
@name varchar(20),
@description varchar(20),
@manufacturedby varchar(20),
@price int
As 
Begin
insert into Mobile Values(@name,@description,@manufacturedby,@price)
end
go
 
Create procedure sp_ViewAllMobiles
As
Begin
Select Id,[Name],[Description],ManufactureBy,Price from Mobile
End
go
 
exec sp_ViewAllMobiles
