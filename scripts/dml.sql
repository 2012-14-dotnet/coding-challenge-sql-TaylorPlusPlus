insert into Employee
  (ID, FirstName, LastName, SSN, DeptId)
values
  (1,'Taylor', 'Steven', '111-111-3333', 1)
,
  (2,'Chris', 'White', '111-222-3333', 2)
,
  (3,'Malcom', 'Jenkins', '111-111-1112', 3);


insert into EmpDetails
  (ID, EmployeeID, Salary, Address1 , Address2, City, [State], Country)
values
  (1, 1, 50000, '1st street', 'Apt 1', 'Baltimore', 'Maryland', 'USA')
,
  (2, 2, 60000, '2nd street', 'Apt 12','Baltimore', 'Maryland', 'USA')
,
  (3, 3, 70000, '3rd street', 'Apt 13', 'Baltimore', 'Maryland', 'USA');

insert into Department
  (ID, [Name], [Location])
values
  (1, 'HR', 'USA')
,
  (2, 'Development', 'USA')
,
  (3, 'Sales', 'USA');

insert into Employee
  (ID, FirstName, LastName, SSN, DeptId)
values
  (4, 'Tina', 'Smith', '111-111-3312', 3);


insert into Department
  (ID, [Name], [Location])
values
  (4, 'Marketing', 'USA');

Select *
FROM Employee
WHERE DeptID = 4;

Select SUM(Salary)
From Employee
where DeptID = 4;

SELECT Count(DeptId)
FROM Employee
GROUP BY DeptID;

UPDATE Employee
set e.Salary = 90000
from Employee as e 
    inner join EmpDetails as ed on ed.EmployeeID = e.ID
where e.FirstName = "Tina" AND e.LastName = "Smith";
