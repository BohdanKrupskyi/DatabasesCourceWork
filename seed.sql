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