SELECT * FROM dbo.Employees

SELECT * INTO #3 FROM dbo.Employees

SELECT * FROM #3

delete FROM #3
where LastName = '' OR Department = '0'

SELECT * INTO #4 FROM dbo.Employees

SELECT * FROM #4

delete FROM #4

SELECT * FROM #3

TRUNCATE TABLE #3

DROP TABLE #3

--Delete - delete certain records FROM the table

--if we will use delete without where condition, all records FROM the table will be deleted, but the 
--table structure remains intact

--Truncate - delete all the records FROM the table but the structure of the table remains intact

--Drop - all the records will be deleted plus table structure will also be removed