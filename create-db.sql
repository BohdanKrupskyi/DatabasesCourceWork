create database LawFirmDb
go

use LawFirmDb
go

create table City
(
    CityId int identity primary key,
    Name   nvarchar(64) not null
)
go

create unique index City_Name_uindex
    on City (Name)
go

create table Department
(
    DepartmentId int identity primary key,
    CityId int foreign key references City(CityId),
    Name nvarchar(64) not null,
)
go

create table Employee
(
    EmployeeId int identity primary key,
    DepartmentId int foreign key references Department(DepartmentId),
    FirstName nvarchar(64) not null,
    LastName nvarchar(64) not null,
    HireDate datetime not null,
    Salary decimal(18,2) not null,
)
go

create table HeadOfDepartment
(
    HeadOfDepartmentId int identity primary key,
    EmployeeId int foreign key references Employee(EmployeeId),
)
go

create table Lawyer
(
    LawyerId int identity primary key,
    EmployeeId int foreign key references Employee(EmployeeId),
    LicenseNo nvarchar(24) not null,
)
go

create table Customer
(
    CustomerId int identity primary key,
    Name nvarchar(64) not null,
)
go

create table "Case"
(
    CaseId int identity primary key,
    CustomerId int foreign key references Customer(CustomerId),
    Description nvarchar(256) not null,
    FilingDate datetime not null,
    Status nvarchar(16) not null,
)
go

create table LawyerAssigment
(
    LawyerAssigmentId int identity primary key,
    LawyerId int foreign key references Lawyer(LawyerId),
    CaseId int foreign key references "Case"(CaseId),
    AssigmentDate datetime not null,
    EndDate datetime,
)