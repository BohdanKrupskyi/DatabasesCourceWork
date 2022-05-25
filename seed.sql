use LawFirmDb
go

insert into City (Name)
values ('New York')
     , ('Los Angeles')
     , ('Chicago')
     , ('Houston')
go

insert into Department (Name, CityId)
values ('East Coast Lawyers', 1)
     , ('LA Law', 2)
     , ('North State Group', 3)
     , ('Washington Law', 4)
go

insert into Employee (FirstName, LastName, HireDate, Salary, DepartmentId)
values
--     Department 1
       ('John', 'Smith', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 1)
     , ('Jane', 'Doe', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 1)
     , ('Joey ', 'Tribbiani', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 1)
--     Department 2
     , ('Ellen', 'Hale', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
     , ('Dania ', 'Richard', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
     , ('Camron ', 'Guerrero', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
--     Department 3
     , ('Michael', 'Scott', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
     , ('Dwight', 'Schrute', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
     , ('Jim', 'Halpert', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
--     Department 4
     , ('Pamela', 'Beesly', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
     , ('Angela', 'Martin', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
     , ('Kevin', 'Malone', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
go

insert into HeadOfDepartment (EmployeeId)
values (1), (4), (7), (10)
go

insert into Lawyer (EmployeeId, LicenseNo)
values (2, 'LAWYER-0001')
     , (3, 'LAWYER-0002')
     , (5, 'LAWYER-0003')
     , (6, 'LAWYER-0004')
     , (8, 'LAWYER-0005')
     , (9, 'LAWYER-0006')
     , (11, 'LAWYER-0007')
     , (12, 'LAWYER-0008')
go


insert into Customer (Name)
values ('Customer 1')
     , ('Customer 2')
     , ('Customer 3')
     , ('Customer 4')
go

insert into "Case" (CustomerId, Description, FilingDate, Status)
values (1, 'Case 1', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
     , (2, 'Case 2', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Closed')
     , (3, 'Case 3', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
     , (4, 'Case 4', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')