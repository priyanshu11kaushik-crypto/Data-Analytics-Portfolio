SELECT * FROM ecommerce_analysis.superstore;
use ecommerce_analysis ;
SELECT 
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value
FROM superstore;
SELECT 
    `Product Category`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    SUM(`Order Quantity`) AS Total_Quantity
FROM superstore
GROUP BY `Product Category`
ORDER BY Total_Sales DESC;
SELECT 
    `Product Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(DISTINCT `Customer Name`) AS Total_Customers
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT 
    YEAR(`Order Date`) AS Year,
    MONTH(`Order Date`) AS Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales,
    ROUND(SUM(Profit), 2) AS Monthly_Profit
FROM superstore
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month;
SELECT 
    `Customer Segment`,
    COUNT(DISTINCT `Customer Name`) AS Customers,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Customer Segment`
ORDER BY Total_Sales DESC;
SELECT 
    `Ship Mode`,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(AVG(`Shipping Cost`), 2) AS Avg_Shipping_Cost
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Orders DESC;
SELECT 
    `Product Name`,
    `Product Category`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Product Name`, `Product Category`
ORDER BY Total_Profit ASC
LIMIT 10;