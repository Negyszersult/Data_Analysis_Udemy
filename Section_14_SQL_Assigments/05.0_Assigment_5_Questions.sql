SELECT * FROM EmployeesData

--Write a SQL query to select all columns and rows from the Employees table.

SELECT *
FROM EmployeesData

--Write a SQL query to find the names and email addresses of all employees who work in the department with DepartmentID = 101.

SELECT FirstName, LastName, Email
FROM EmployeesData
WHERE DepartmentID = 101

--Write a SQL query to find the total number of employees in the Employees table.

SELECT COUNT(EmployeeID) AS [Total_Number_of_Employees]
FROM EmployeesData

--Write a SQL query to find the details of employees who were hired in the year 2020.

SELECT *
FROM EmployeesData
WHERE YEAR(HireDate) = 2020

--Write a SQL query to update the salary of 'Jane Doe' to 90,000.

UPDATE EmployeesData
SET Salary = 90000.00
WHERE FirstName = 'Jane' AND LastName = 'Doe';