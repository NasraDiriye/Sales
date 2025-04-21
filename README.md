# Power BI Internet Sales Report — AdventureWorks 2022

### 🔍 Overview
This Power BI project aims to transform static sales reports into dynamic, visual dashboards based on the AdventureWorks 2022 dataset. It addresses real business needs by providing actionable insights into internet sales performance, allowing better decision-making across the sales team.

#### The report is built using:

  - Power BI Desktop
  
  - MS SQL Server (via Docker container)
  
  - Azure Data Studio for database queries
  
  - Excel Budget Data for 2025
  
  - AdventureWorks2022 dataset
Dateset can be found here ---> https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms

### 📌 Business Needs

From static reports ➡ to interactive dashboards

Customer wants a visual reporting solution to:

  - Analyze what products are being sold
  
  - Track which customers are buying
  
  - See sales trends over time
  
  - Enable filtering per salesperson, product, and customer
  
  - Compare performance against 2025 budget


### 📋 User Stories

| No. | Role              | Request                                      | User Value                                                  | Acceptance Criteria                                  |
|-----|-------------------|----------------------------------------------|-------------------------------------------------------------|------------------------------------------------------|
| 1   | Sales Manager     | A dashboard overview of internet sales       | Can follow which customers and products sell the best       | A Power BI dashboard which updates data once a day   |
| 2   | Sales Representative | A detailed overview of Internet Sales per Customer | Can follow up with top customers and find sales opportunities | A dashboard that allows filtering by each customer   |
| 3   | Sales Representative | A detailed overview of Internet Sales per Product  | Can follow up on the best-selling products                  | A dashboard that allows filtering by each product    |
| 4   | Sales Manager     | A dashboard comparing sales against budget   | Can track performance toward financial goals                | KPIs and graphs comparing to the 2025 budget         |

### 💻 Technical Setup

    Database: AdventureWorks2022
    
    Hosted via Docker SQL Server container
    
    Managed with Azure Data Studio
    
    ETL & Data Modeling: DAX & Power Query in Power BI
    
    Budget Data: Imported from Excel for 2025
    
  
