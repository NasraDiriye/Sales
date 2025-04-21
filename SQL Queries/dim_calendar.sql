-- cleansed dim date table
SELECT
    [DateKey]
      , [FullDateAlternateKey] as 'Date'
      --,[DayNumberOfWeek]
      , [EnglishDayNameOfWeek] as 'DayName'
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
      , [WeekNumberOfYear] AS 'Week'
      , LEFT([EnglishMonthName],3 )as 'Month'
     --,[SpanishMonthName]
      --,[FrenchMonthName]
      , [MonthNumberOfYear] as 'MonthNum'
      , [CalendarQuarter] AS Quarter
      , [CalendarYear] as 'Year'
-- ,[CalendarSemester]
--,[FiscalQuarter]
--,[FiscalYear]
--,[FiscalSemester]
FROM [DimDate] WHERE  [CalendarYear] >= 2023
ORDER by DateKey ASC

--select distinct[CalendarYear] from [DimDate] order by CalendarYear DESC