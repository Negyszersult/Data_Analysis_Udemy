SELECT * FROM EmployeesData

--Write a SQL query to find the names of employees whose first names start with the letter 'J'.

SELECT FirstName, LastName
FROM EmployeesData
WHERE FirstName LIKE 'J%'

--Write a SQL query to find the names of employees whose last names end with the letter 'n'.

SELECT FirstName, LastName
FROM EmployeesData
WHERE LastName LIKE '%n'

--Write a SQL query to find the email addresses of employees that contain the word "john".

SELECT Email
FROM EmployeesData
WHERE Email LIKE '%john%'

--Write a SQL query to find the names of employees whose first names have exactly 5 characters.

SELECT FirstName, LastName
FROM EmployeesData
WHERE FirstName LIKE '_____'

--Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.

SELECT FirstName, LastName
FROM EmployeesData
WHERE LastName LIKE '_a%'