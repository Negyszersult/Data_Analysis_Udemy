SELECT * FROM dbo.Employees

SELECT * INTO #1 FROM dbo.Employees

SELECT * FROM #1

UPDATE #1
SET Department = 'HR'
WHERE Department is null

UPDATE #1
SET Salary = 89000,HireDate = '2023-01-01'
WHERE EmployeeID = 7

SELECT * FROM #1 WHERE EmployeeID = 7

SELECT * INTO #2 FROM dbo.Employees

SELECT * FROM #2

UPDATE #2
SET Department = 'Finance'