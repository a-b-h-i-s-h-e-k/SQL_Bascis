-- DDL

CREATE TABLE Employees (
EmployeeID int auto_increment,
FirstName varchar(50),
LastName varchar(50),
Position varchar(50),
Salary decimal(10, 2),
HireDate Date,
primary key (EmployeeID)
);

-- Alter the table add a new column
ALTER TABLE Employees
ADD COLUMN Department varchar(50);

-- Drop The Table
DROP TABLE Employees;
