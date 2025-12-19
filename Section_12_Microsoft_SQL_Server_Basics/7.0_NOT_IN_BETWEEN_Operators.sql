SELECT * FROM dbo.EmployeeRecords

SELECT * FROM dbo.EmployeeRecords
WHERE NOT FirstName = 'John' AND NOT Salary = 60000

SELECT * FROM dbo.EmployeeRecords
WHERE NOT LastName = 'Miller' OR NOT Department = 'HR'

SELECT * FROM dbo.EmployeeRecords
WHERE Salary BETWEEN 75000 AND 85000

SELECT * FROM dbo.EmployeeRecords
WHERE Salary>= 75000 AND Salary<=85000

SELECT * FROM dbo.EmployeeRecords
WHERE Salary NOT BETWEEN 75000 AND 85000

SELECT * FROM dbo.EmployeeRecords
WHERE NOT Salary BETWEEN 75000 AND 85000

SELECT * FROM dbo.EmployeeRecords
WHERE Department = 'HR' OR Department = 'IT'

SELECT * FROM dbo.EmployeeRecords
WHERE Department IN ('HR','IT')

SELECT * FROM DBO.EMPLOYEERECORDS
WHERE DEPARTMENT NOT IN ('HR','IT')
