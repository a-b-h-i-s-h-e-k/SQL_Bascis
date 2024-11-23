-- DQL

select * From Employees;

-- Select Specific columns from the table
select FirstName, LastName, Position, Salary
from Employees
where Department = 'Sales';

-- Select data with aggregation
select Department, COUNT(*) AS NumberofEmployees, Avg(Salary) AS AverageSalary
From Employees
GROUP BY Department
Having Avg(Salary) > 50000;