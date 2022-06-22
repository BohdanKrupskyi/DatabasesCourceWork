﻿use LawFirmDb
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
	 , ('Jase ', 'Harper', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 1)
	 , ('Harper ', 'Odom', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 1)
	 , ('Aleah ', 'Morales', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 1)
--     Department 2
     , ('Ellen', 'Hale', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
     , ('Dania ', 'Richard', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
     , ('Camron ', 'Guerrero', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
	 , ('Fiona ', 'Wright', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
	 , ('Elliott ', 'Davenport', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
	 , ('Abdiel ', 'Hurst', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
	 , ('Jordon ', 'Hardy', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
	 , ('Leandro ', 'Hughes', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
	 , ('Peter ', 'Ewing', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 2)
--     Department 3
     , ('Michael', 'Scott', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
     , ('Dwight', 'Schrute', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
     , ('Jim', 'Halpert', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
	 , ('Hudson ', 'Hendrix', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
	 , ('Chace ', 'Cain', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
	 , ('Toby ', 'Lester', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
	 , ('Marco ', 'Mayo', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
	 , ('Jude ', 'Williams', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 3)
--     Department 4
     , ('Pamela', 'Beesly', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
     , ('Angela', 'Martin', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
     , ('Kevin', 'Malone', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
	 , ('Matias ', 'Brandt', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
	 , ('Enzo ', 'Cook', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
	 , ('Eduardo ', 'Black', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
	 , ('Jordin ', 'Sullivan', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
	 , ('Larry ', 'Castro', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
	 , ('Juan ', 'Coleman', DATEADD(day, -(RAND() * 5000), GETDATE()), RAND() * 100000, 4)
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
	 , (13, 'LAWYER-0009')
	 , (14, 'LAWYER-0010')
	 , (15, 'LAWYER-0011')
	 , (16, 'LAWYER-0012')
	 , (17, 'LAWYER-0013')
	 , (18, 'LAWYER-0014')
	 , (19, 'LAWYER-0015')
	 , (20, 'LAWYER-0016')
	 , (21, 'LAWYER-0017')
	 , (22, 'LAWYER-0018')
	 , (23, 'LAWYER-0019')
	 , (24, 'LAWYER-0020')
	 , (25, 'LAWYER-0021')
	 , (26, 'LAWYER-0022')
	 , (27, 'LAWYER-0023')
	 , (28, 'LAWYER-0024')
	 , (29, 'LAWYER-0025')
	 , (30, 'LAWYER-0026')
	 , (31, 'LAWYER-0027')
	 , (32, 'LAWYER-0028')
go


insert into Customer (FirstName,LastName, Email, PhoneNumber, AuthCompleted)
values ('Bethany','Hume', 'lewpogr@gmail.com', '0329438492', 1)
     , ('Scarlette','Anthony', 'dfoopwji@gmail.com', '0329212322', 1)
     , ('Amirah', 'York' ,'customer3@gmail.com', '069582392', 1)
     , ('Marianna', 'Thornton', 'myosq4@gmail.com', '099483782', 0)
	 , ('Dillon', 'Pennington', 'hello5@gmail.com', '432054908', 1)
	 , ('Annabella', 'Emery','goodbye@gmail.com', '902340837', 0)
	 , ('Darlene', 'Bowes', 'oofeo@gmail.com', '089328478', 1)
	 , ('Bruno', 'Ratliff', 'mymail@gmail.com', '048328983', 1)
	 , ('Ria', 'Senior', 'surmail@gmail.com', '099583249', 1)
	 , ('Dominik', 'Zuniga', 'accountgmail.com', '09943819', 0)
	 , ('Chanice', 'Schwartz', 'miss@gmail.com', '093263497', 0)
	 , ('Luci', 'Arroyo', 'kamado@gmail.com', '067843923', 0)
	 , ('Maira', 'Mckinney', 'searching@gmail.com', '0329403892', 1)
	 , ('Ozan', 'Tierney', 'chlop@gmail.com', '0549037297', 1)
	 , ('Mert', 'Forrest', 'main@gmail.com', '0684839293', 1)
	 , ('Hadassah', 'Wong', 'domain@gmail.com', '0528437489', 0)
	 , ('Geraint', 'Moss', 'hosting@gmail.com', '0994389328', 1)
	 , ('Naeem', 'Fritz', 'field8@gmail.com', '0549382983', 1)
	 , ('Charlene', 'Cassidy', 'glorytoukraine@gmail.com', '5843902340', 1)
go

insert into "Case" (CustomerId, Description, FilingDate, Status)
values (1, 'Case 1', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
     , (2, 'Case 2', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Closed')
     , (3, 'Case 3', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
     , (6, 'Case 4', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (5, 'Case 5', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (4, 'Case 6', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (7, 'Case 7', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (9, 'Case 8', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (8, 'Case 9', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (12, 'Case 10', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Closed')
	 , (11, 'Case 11', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (10, 'Case 12', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (15, 'Case 13', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Closed')
	 , (13, 'Case 14', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (14, 'Case 15', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (18, 'Case 16', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (17, 'Case 17', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (16, 'Case 18', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Closed')
	 , (2, 'Case 19', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (3, 'Case 20', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (19, 'Case 21', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (8, 'Case 22', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (12, 'Case 23', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Closed')
	 , (16, 'Case 24', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Open')
	 , (4, 'Case 25', DATEADD(day, -(RAND() * 5000), GETDATE()), 'In Progress')
	 , (5, 'Case 26', DATEADD(day, -(RAND() * 5000), GETDATE()), 'Closed')
go
insert into LawyerAssigment (LawyerID, CaseID, AssigmentDate, EndDate)
values (5, 4, 12/04/2019, null)
	 , (8, 2, 19/10/2020, null)
	 , (12, 1,27/11/2022, null)
	 , (6, 3, 06/07/2019, 07/08/2021)
	 , (2, 5, 02/05/2019, null)
	 , (3, 6, 18/09/2019, null)
	 , (6, 8 ,18/02/2020, null)
	 , (9, 10,13/08/2020, null)
	 , (13, 12, 14/03/2021, null)
	 , (14, 7, 26/08/2021, null)
	 , (16, 9, 09/12/2021, null)
	 , (18, 11, 11/05/2022, null)
	 , (11, 13, 12/06/2019, null)










