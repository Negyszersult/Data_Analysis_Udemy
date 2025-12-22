SELECT *
FROM EmployeeSales

--Write a query to calculate the total sales amount for each department in the EmployeeSales table.

SELECT Department, SUM(SaleAmount) [Total_Sales_Amount]
FROM EmployeeSales
GROUP BY Department

--Write a query to count the number of sales made by each employee.

SELECT EmployeeID, COUNT(SaleID) [Number_of_Sales]
FROM EmployeeSales
GROUP BY EmployeeID

--Write a query to calculate the average sale amount for each department.

SELECT Department, AVG(SaleAmount) [Average_of_Sales_Amount]
FROM EmployeeSales
GROUP BY Department

--Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.

SELECT EmployeeID, SUM(SaleAmount) [Total_Sale_Amount]
FROM EmployeeSales
GROUP BY EmployeeID
HAVING COUNT(SaleID) <= 1

--Write a query to find the total sales for each month in 2023.

SELECT
  YEAR(SaleDate)  AS SalesYear,
  MONTH(SaleDate) AS SalesMonth,
  SUM(SaleAmount) AS TotalSales
FROM EmployeeSales
WHERE SaleDate >= '2023-01-01'
  AND SaleDate <  '2024-01-01'
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
ORDER BY SalesYear, SalesMonth;