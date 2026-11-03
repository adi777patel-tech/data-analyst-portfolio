-- E-Commerce Data Analyst Project
SELECT SUM(Sales) AS total_sales FROM Orders;
SELECT SUM(Profit) AS total_profit, SUM(Profit)/NULLIF(SUM(Sales),0) AS profit_margin FROM Orders;
SELECT DATE_TRUNC('month',Order_Date) month,SUM(Sales) sales,SUM(Profit) profit FROM Orders GROUP BY 1 ORDER BY 1;
SELECT p.Product_Name,SUM(o.Sales) sales FROM Orders o JOIN Products p ON o.Product_ID=p.Product_ID GROUP BY p.Product_Name ORDER BY sales DESC LIMIT 10;
SELECT c.State,SUM(o.Sales) sales FROM Orders o JOIN Customers c ON o.Customer_ID=c.Customer_ID GROUP BY c.State ORDER BY sales DESC;
SELECT SUM(Sales)/COUNT(DISTINCT Order_ID) AS AOV FROM Orders;
SELECT COUNT(DISTINCT r.Order_ID)*1.0/COUNT(DISTINCT o.Order_ID) AS return_rate FROM Orders o LEFT JOIN Returns r ON o.Order_ID=r.Order_ID;
SELECT p.Category,SUM(o.Sales) sales,SUM(o.Profit) profit FROM Orders o JOIN Products p ON o.Product_ID=p.Product_ID GROUP BY p.Category ORDER BY sales DESC;
SELECT c.Segment,SUM(o.Sales) sales FROM Orders o JOIN Customers c ON o.Customer_ID=c.Customer_ID GROUP BY c.Segment ORDER BY sales DESC;
SELECT c.Customer_ID,c.Customer_Name,SUM(o.Sales) sales FROM Orders o JOIN Customers c ON o.Customer_ID=c.Customer_ID GROUP BY c.Customer_ID,c.Customer_Name ORDER BY sales DESC LIMIT 20;
