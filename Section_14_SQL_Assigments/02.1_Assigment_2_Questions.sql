SELECT * FROM EmployeesData;

--Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.

SELECT FirstName, LastName
FROM EmployeesData
WHERE Salary > (SELECT AVG(Salary) FROM EmployeesData);

--Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.

SELECT FirstName, LastName, DepartmentID
FROM EmployeesData
WHERE HireDate > (SELECT MIN(HireDate) FROM EmployeesData);

--Write a SQL query to find the details of the employee(s) with the highest salary.

SELECT *
FROM EmployeesData
WHERE Salary = (SELECT MAX(Salary) FROM EmployeesData);

--Write a SQL query to find the names of employees who work in the same department as 'John Smith'.

SELECT FirstName, LastName
FROM EmployeesData
WHERE DepartmentID = (
  SELECT DepartmentID
  FROM EmployeesData
  WHERE FirstName = 'John' AND LastName = 'Smith'
);

--Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.

SELECT FirstName, LastName
FROM EmployeesData
WHERE DepartmentID <> (
  SELECT TOP 1 DepartmentID
  FROM EmployeesData
  GROUP BY DepartmentID
  ORDER BY AVG(Salary) DESC
);