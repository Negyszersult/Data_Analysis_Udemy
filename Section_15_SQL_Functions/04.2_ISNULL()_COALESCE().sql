SELECT *
FROM Customers

-- ISNULL

SELECT ISNULL(null,'1 st value null')

SELECT ISNULL('abx',null)

SELECT ISNULL(null,null)

SELECT COALESCE('A','B','C')

SELECT COALESCE(null,'B','C')

SELECT COALESCE(null,null,'C')

--
SELECT * FROM Customers

SELECT Customerid,email,phonenumber FROM Customers

SELECT Customerid,ISNULL(email,'Email NA'),ISNULL(phonenumber,'Ph No NA') FROM Customers

SELECT Customerid,COALESCE(email,phonenumber,'Contact NA') [Coalesce Function] FROM Customers