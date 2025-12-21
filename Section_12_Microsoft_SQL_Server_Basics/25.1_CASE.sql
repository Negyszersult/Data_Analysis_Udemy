

SELECT * FROM Products


--Example1 : Add a column to categorize each product into categories high, medium & low
SELECT 
*,
CASE
	WHEN Price > 500 THEN 'High' 
	WHEN Price<=500 and Price>=200 THEN 'Medium'
	ELSE 'Low'
END AS [High/Medium/Low]
FROM products
-----------------------------------------------Test
SELECT 
*,
CASE
	WHEN Price > 500 THEN 'High' 
	WHEN Price<=500 and Price>=200 THEN 'Medium'
END AS [High/Medium/Low]
FROM products

--Example2 : Provide priority to each category & sort the data according to that priority
SELECT * FROM Products
ORDER BY 
CASE 
	WHEN Category in ('Electronics') THEN 1
	WHEN Category in ('Furniture') THEN 2
	ELSE 3
END

-----------------------test

SELECT * FROM Products
ORDER BY 
CASE 
	WHEN Category in ('Electronics') THEN 1
	WHEN Category in ('Furniture') THEN 2
	WHEN Category = 'Accessories' THEN 3
END


