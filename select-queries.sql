use LawFirmDb
go

select * from City;

-- Select All Head of Departments
select d.Name as DepartmentName,
       e.FirstName, e.LastName
from HeadOfDepartment hod
join Employee E on hod.EmployeeId = E.EmployeeId
join Department D on E.DepartmentId = D.DepartmentId;

-- Select lawyers hired in 2022 year
select * from Employee ee
join Lawyer L on ee.EmployeeId = L.EmployeeId
where HireDate between '2022-01-01' and '2022-12-31';

-- Top 5 highest salary employee
select top 5 * from Employee ee
order by Salary desc;

-- Number of employees per department
select DepartmentId, count(*) from Employee ee
group by DepartmentId
order by count(*) desc;

-- Cases without assigned lawyer
select c.CaseId,
       c.Description as CaseDescription,
       c.FilingDate,
       c.Status,
       cus.Name
from [Case] c
join Customer cus on c.CustomerId = cus.CustomerId
where not exists(select 1 from LawyerAssigment la where la.CaseId = c.CaseId);

-- Lawyers working on active cases
select c.CaseId,
       c.Description as CaseDescription,
       c.FilingDate,
       c.Status,
       e.FirstName as LawyerFirstName,
       e.LastName as LawyerLastName
from [Case] c
join LawyerAssigment LA on c.CaseId = LA.CaseId
join Lawyer L on LA.LawyerId = L.LawyerId
join Employee E on L.EmployeeId = E.EmployeeId
where la.EndDate is null;

-- Cases closed by lawyer
select l.LawyerId, l.LicenseNo, e.FirstName, e.LastName,
       (select count(*) from [Case] c
        join LawyerAssigment LA on c.CaseId = LA.CaseId
        where c.Status = 'Closed' and la.LawyerId = l.LawyerId) as ClosedCases
from Lawyer L
join Employee E on E.EmployeeId = L.EmployeeId
group by l.LawyerId, l.LicenseNo, e.FirstName, e.LastName
order by ClosedCases desc;

--  Cities with most cases
select city.CityId, city.Name,
       (select count(*) from [Case] c
        join Customer cus on c.CustomerId = cus.CustomerId
        join LawyerAssigment LA on c.CaseId = LA.CaseId
        join Lawyer L on LA.LawyerId = L.LawyerId
        join Employee E on E.EmployeeId = L.EmployeeId
        join Department D on E.DepartmentId = D.DepartmentId
        where city.CityId = d.CityId) as TotalCases
from City city;

-- Cases By filling date year
select datepart(year, c.FilingDate) as FilingYear,
       count(*) as TotalCases
from [Case] c
group by datepart(year, c.FilingDate)
order by FilingYear desc