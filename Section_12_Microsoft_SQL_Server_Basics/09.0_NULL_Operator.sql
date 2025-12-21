SELECT * FROM dbo.Employees

INSERT INTO dbo.Employees
VALUES (9,'Jay','','IT',73000,'2022-04-04')

INSERT INTO DBO.Employees
VALUES (10,'Nitin','shamani','0',54000,'2021-02-22')

SELECT * FROM dbo.Employees WHERE Department = NULL

SELECT * FROM dbo.Employees WHERE Department IS NULL

SELECT * FROM dbo.Employees WHERE Department IS NOT NULL