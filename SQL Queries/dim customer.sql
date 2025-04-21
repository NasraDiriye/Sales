-- Cleansed customer table
SELECT c.CustomerKey AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      , [FirstName] as [First Name]
     -- ,[MiddleName]
      , [LastName] as [Last Name]
      --, [NameStyle],
      , [BirthDate]
      , FirstName +' '+ LastName as [Full Name]
      , DATEDIFF(YY, BirthDate,GETDATE()) As [Age]
      --, [MaritalStatus]
      --, [Suffix]
      , Case c.Gender when 'M' then 'Male' When 'F' then 'Female' END as Gender
      --, [EmailAddress]
      --, [YearlyIncome]
      --, [TotalChildren]
      --, [NumberChildrenAtHome]
      --, [EnglishEducation]
      --, [SpanishEducation]
      --, [FrenchEducation]
      --, [EnglishOccupation]
      --, [SpanishOccupation]
      --, [FrenchOccupation]
      --, [HouseOwnerFlag]
      --, [NumberCarsOwned]
      --, [AddressLine1]
      --, [AddressLine2]
      --, [Phone]
      , [DateFirstPurchase]
      , g.City as [Customer City]
--, [CommuteDistance]
FROM DimCustomer as c
    Left join DimGeography as g on g.GeographyKey = c.GeographyKey
Order By CustomerKey ASC

