-- DML

INSERT INTO Employees (FirstName, LastName, Position, Salary, HireDate, Department)
VALUES ('John', 'Doe', 'Manager', 75000, '2023-05-15', 'Sales');

-- Update data in the table
UPDATE Employees
SET Salary = 80000, Position = 'Senior Manager'
WHERE EmployeeID = 1;

select * from employees;

-- Delete data from the table

DELETE From Employees
WHERE EmployeeID = 1;
