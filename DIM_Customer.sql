/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  c.[CustomerKey] AS CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.[FirstName] AS FirstName, 
  --,[MiddleName]
  c.[LastName] AS LastName, 
  c.FirstName + ' ' + c.LastName AS FullName, 
  -- Combined First and Last Name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.city AS CustomerCity -- Joined in Customer City from Geography Table 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS g ON c.geographykey = g.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey
