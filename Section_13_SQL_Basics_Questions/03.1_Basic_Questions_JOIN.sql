SELECT * FROM Customers

SELECT * FROM Orders

SELECT * FROM Products

--1) Write an SQL query to find the names of customers who have placed an order.
SELECT DISTINCT CustomerName
FROM Customers INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID

--2) Find the list of customers who have not placed any orders.
SELECT DISTINCT CustomerName
FROM Customers LEFT JOIN Orders ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.OrderID IS NULL

--3) List all orders along with the product name and price.
SELECT DISTINCT ProductName,Price
FROM Orders o JOIN Products p ON o.ProductID = p.ProductID  

--4) Find the names of customers and their orders, including customers who haven't placed any orders.
SELECT DISTINCT CustomerName,OrderID
FROM Customers c LEFT JOIN Orders o ON o.CustomerID = c.CustomerID

--5) Retrieve a list of products that have never been ordered.
SELECT DISTINCT p.ProductID,ProductName 
FROM Products p LEFT JOIN Orders o ON p.ProductID = o.ProductID
WHERE o.OrderDate IS NULL

--6) Find the total number of orders placed by each customer.
SELECT customername,count(orderid) [Number of Orders]
FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY customername

--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
SELECT DISTINCT CustomerName,p.ProductID,ProductName,OrderDate
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID LEFT JOIN Products p ON o.ProductID = p.ProductID