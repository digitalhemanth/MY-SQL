CREATE FUNCTION CustomerDepartment()
  RETURNS @customers TABLE
  (
  	[EmployeeID] [smallint] NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](40)  NULL,
	[Education] [nvarchar](255) NULL,
	[Occupation] [nvarchar](255) NULL,
	[YearlyIncome] [float] NULL,
	[Sales] [float] NULL,
	[HireDate] [date] NULL,
	[DepartmentName] [VARCHAR](50) NULL
  )
  AS BEGIN
   INSERT INTO @customers
   SELECT  [EmployeeID]
	  ,[FirstName]
          ,[LastName]
	  ,[Education]
	  ,[Occupation]
	  ,[YearlyIncome]
	  ,[Sales]
	  ,[HireDate]
	  ,dept.DepartmentName
	FROM [MyEmployees Table]
	INNER JOIN 
	     Department AS dept ON
		Dept.[id] = [MyEmployees Table].DeptID
    
   -- Updating the Records
   UPDATE @customers SET [YearlyIncome] = [YearlyIncome] + 35200
	WHERE [Sales] > (SELECT AVG(Sales) FROM [MyEmployees Table])
  RETURN
 END