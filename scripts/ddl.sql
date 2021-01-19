CREATE TABLE Employee
(
    ID int not NULL,
    FirstName varchar(25),
    LastName varchar(25),
    SSN varchar(12),
    DeptID int
);

CREATE TABLE EmpDetails
(
    ID int not NULL,
    EmployeeID int not NULL,
    Salary int not Null,
    Address1 varchar(100),
    Address2 varchar(100),
    City varchar(50),
    State varchar(20),
    Country varchar(30)    
);

CREATE TABLE Department
(
    ID int NOT NULL,
    [Name] VARCHAR(50),
    Locatation VARCHAR(100)
);

ALTER TABLE Employee
    add CONSTRAINT PK_ID primary key CLUSTERED(ID)
GO
ALTER TABLE EmpDetails
    add CONSTRAINT PK_ID primary key CLUSTERED(ID)
GO
ALTER TABLE Department
    add CONSTRAINT PK_ID primary key CLUSTERED(ID)
GO

ALTER TABLE EmpDetails
    add CONSTRAINT FK_EmployeeID foreign key (EmployeeID) REFERENCES Employee(ID)
GO

ALTER TABLE Employee
    add CONSTRAINT FK_DeptID foreign key (DeptID) REFERENCES Department(ID)
GO



