--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?

SELECT *
FROM Employees
WHERE Department LIKE 'IT' AND Salary > 75000

--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?

SELECT *
FROM Employees
WHERE Department LIKE 'HR' OR Salary < 60000

--3. How do you select employees who do not work in the 'Finance' department?

SELECT *
FROM Employees
WHERE Department NOT LIKE 'Finance'

--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?

SELECT *
FROM Employees
WHERE (Salary BETWEEN 60000 AND 70000) AND (Department LIKE 'Finance')

--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?

SELECT *
FROM Employees
WHERE (Department LIKE 'IT') AND (Salary <= 80000)

--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?

SELECT *
FROM Employees
WHERE (Department LIKE 'HR' OR Department LIKE 'Finance') AND (Salary >= 65000)

--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?

SELECT *
FROM Employees
WHERE (LastName LIKE 'D%') AND (Department NOT LIKE 'HR')

--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?

SELECT *
FROM Employees
WHERE Department NOT LIKE 'IT' AND Salary >= 70000

--9. How do you select employees who work in the 'IT' department and either have a salary greater than 75,000 or have the first name 'Laura'?

SELECT *
FROM Employees
WHERE (Department LIKE 'IT') AND ((Salary > 75000) OR (FirstName LIKE 'Laura'))

--10. How do you find employees who do not work in the 'HR' or 'IT' departments?

SELECT *
FROM Employees
WHERE Department NOT IN ('HR', 'IT')