SELECT * FROM dbo.Sales

SELECT MAX(totalamount) AS [Maximum Amount] FROM dbo.Sales

SELECT MAX(saledate) AS [Max SalesDate] FROM dbo.Sales

SELECT MAX(paymentmethod) AS [Max Pay method] FROM dbo.Sales

--Maximum Quantity sold for each productID
SELECT productid,MAX(quantity) AS [Maximum Quantity] FROM dbo.Sales
GROUP BY productid

--Maximum Total Amount for all distinct dates in saledate column
SELECT saledate,MAX(totalamount) AS [Maximum Total Amount] FROM dbo.Sales
GROUP BY saledate