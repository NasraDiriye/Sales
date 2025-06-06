SELECT 
    [ProductKey]
      , [ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      , [EnglishProductName] as [Product]
      , pc.EnglishProductCategoryName as [Product category]
      , ps.EnglishProductSubcategoryName as [Product subcategory]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      , [Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      , [Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      , [ProductLine]
      --,[DealerPrice]
     --,[Class]
      --,[Style]
      , [ModelName]
      --,[LargePhoto]
      , [EnglishDescription] as [Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      , ISNULL(p.Status, 'Outdated') AS [Status]
FROM [DimProduct] as p
    Left join DimProductSubcategory as ps on p.ProductSubcategoryKey=ps.ProductSubcategoryKey
    Left join DimProductCategory as pc on ps.ProductCategoryKey=pc.ProductCategoryKey
order by ProductKey ASC