SELECT * FROM dbo.Employees

INSERT INTO dbo.Employees (EmployeeID,FirstName,LastName,Department,Salary,HireDate)
VALUES (6,'Raj','Ambani','IT',67000,'2023-04-20')

INSERT INTO dbo.Employees (EmployeeID,FirstName,LastName)
VALUES (7,'Rohit','Mehera')

INSERT INTO dbo.Employees
VALUES (8,'Mahesh','Narang','HR',73000,'2024-01-21')

SELECT * FROM dbo.Employees

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'Employees'

