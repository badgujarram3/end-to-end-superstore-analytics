USE superstore_sales;

-- 1 Total Sales and Profit
SELECT
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sheet1;

-- 2 Sales by Category
SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 3 Sales by Sub-Category
SELECT
    `Sub-Category`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 4 Monthly Sales Trend
SELECT
    MONTHNAME(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY MONTH(`Order Date`), MONTHNAME(`Order Date`)
ORDER BY MONTH(`Order Date`);

-- 5 Yearly Sales
SELECT
    YEAR(`Order Date`) AS Year,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY YEAR(`Order Date`)
ORDER BY Year;


-- Top 10 Customers by Sales
SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

--  Customer Count
SELECT
    COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM sheet1;

--  Sales by Segment
SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY Segment
ORDER BY Total_Sales DESC;

--  Average Sales Per Customer
SELECT
    ROUND(SUM(Sales)/COUNT(DISTINCT `Customer ID`),2) AS Avg_Sales_Per_Customer
FROM sheet1;

-- Top 10 Customers by Profit
SELECT
    `Customer Name`,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sheet1
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;


--  Top 10 Products by Sales
SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Products by Profit
SELECT
    `Product Name`,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sheet1
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

--  Quantity Sold by Category
SELECT
    Category,
    SUM(Quantity) AS Total_Quantity
FROM sheet1
GROUP BY Category
ORDER BY Total_Quantity DESC;

--  Sales by Ship Mode
SELECT
    `Ship Mode`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;

--  Sales by Payment Mode
SELECT
    `Payment Mode`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY `Payment Mode`
ORDER BY Total_Sales DESC;

--  Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY Region
ORDER BY Total_Sales DESC;

--  Profit by Region
SELECT
    Region,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sheet1
GROUP BY Region
ORDER BY Total_Profit DESC;

--  Top 10 States by Sales
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

--  Top 10 Cities by Sales
SELECT
    City,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sheet1
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

--  Top 10 Cities by Profit
SELECT
    City,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sheet1
GROUP BY City
ORDER BY Total_Profit DESC
LIMIT 10;

--  Overall Profit Margin
SELECT
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM sheet1;

-- Average Order Value
SELECT
    ROUND(SUM(Sales)/COUNT(DISTINCT `Order ID`),2) AS Avg_Order_Value
FROM sheet1;

--  Total Orders
SELECT
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM sheet1;

--  Total Quantity Sold
SELECT
    SUM(Quantity) AS Total_Quantity_Sold
FROM sheet1;

-- Top 5 Most Profitable States
SELECT
    State,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sheet1
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 5;