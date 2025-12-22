SELECT * FROM EmployeesData
SELECT * FROM Departments

--Write a SQL query to list the names of employees along with the names of the departments they work in.

SELECT FirstName, LastName, DepartmentName
FROM EmployeesData LEFT JOIN Departments ON EmployeesData.DepartmentID = Departments.DepartmentID

--Write a SQL query to list all the departments and the employees working in them, including departments with no employees.

SELECT
  d.DepartmentID,
  d.DepartmentName,
  e.EmployeeID,
  e.FirstName,
  e.LastName
FROM Departments d
LEFT JOIN EmployeesData e
  ON e.DepartmentID = d.DepartmentID
ORDER BY d.DepartmentID, e.LastName, e.FirstName;

--Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).

SELECT e.FirstName, e.LastName
FROM EmployeesData e
LEFT JOIN Departments d
  ON d.DepartmentID = e.DepartmentID
WHERE d.DepartmentID IS NULL;

--Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.

SELECT e.FirstName, e.LastName
FROM EmployeesData e
WHERE e.DepartmentID = (
  SELECT DepartmentID
  FROM EmployeesData
  WHERE FirstName = 'Jane' AND LastName = 'Doe'
);

--Write a SQL query to find the department with the highest total salary paid to its employees.

SELECT TOP 1
  d.DepartmentID,
  d.DepartmentName,
  SUM(e.Salary) AS TotalSalary
FROM Departments d
JOIN EmployeesData e
  ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY SUM(e.Salary) DESC;
