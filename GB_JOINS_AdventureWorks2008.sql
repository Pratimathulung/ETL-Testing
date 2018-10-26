use AdventureWorksLT2008;

SELECT * FROM SalesLT.CustomerAddress;
SELECT * FROM SalesLT.Address;
SELECT * FROM SalesLT.Customer;
SELECT * FROM SalesLT.SalesOrderDetail;
SELECT * FROM SalesLT.SalesOrderHeader;

--1) Write a query to display all customerid's  and their complete Address information who lives in US
SELECT C.CUSTOMERID, C.AddressID, City, StateProvince, CountryRegion
FROM SalesLT.CustomerAddress C 
LEFT JOIN SalesLT.Address A ON C.AddressID = A.AddressID
WHERE CountryRegion = 'United States';


---2) Write a query to display all customerid's  and their complete Address information who lives in CANADA  and 
--having both addresses(ADDR1 & ADDR2)
SELECT C.CUSTOMERID, C.AddressID, AddressLine1, AddressLine2, City, StateProvince, CountryRegion
FROM SalesLT.CustomerAddress C 
LEFT JOIN SalesLT.Address A ON C.AddressID = A.AddressID
WHERE CountryRegion = 'Canada' AND AddressLine1 IS NOT NULL AND AddressLine2 IS NOT NULL;

--3) Write a query to display the number of customers lives in each country (US,UK  & CANADA).
SELECT CountryRegion, COUNT(AddressID) AS NoOfCustomers from SalesLT.Address
GROUP BY CountryRegion 
HAVING CountryRegion IN('United States', 'United Kingdom', 'Canada');

--4) Write a query to display the number of  customers lives in each city and in each state in each country.
SELECT City, StateProvince, CountryRegion, COUNT(AddressID) 
FROM SalesLT.Address 
GROUP BY CountryRegion, City, StateProvince;

--5) Write a query to display all the ProductNames and  their respective ProductCategoryNames in the company in 
SELECT P.Name PRODUCTNAME, PC.Name PRODUCTCATEGORYNAME from SalesLT.Product P
LEFT JOIN SalesLT.ProductCategory PC
ON P.ProductCategoryID = PC.ProductCategoryID
ORDER BY P.Name, PC.Name;

--6) Write a query to display all the ProductCategory names and the respective total margin they will earn.
SELECT PC.Name, SUM(P.LISTPRICE-P.STANDARDCOST) TOTALMARGIN
FROM SalesLT.ProductCategory PC
LEFT JOIN SalesLT.Product P
ON PC.ProductCategoryID = P.ProductCategoryID
GROUP BY PC.Name;


--7) Write a query to display the no of Products in each product category 
SELECT PC.ProductCategoryID, COUNT(P.ProductCategoryID) 
FROM SalesLT.Product P 
RIGHT JOIN SalesLT.ProductCategory PC 
ON P.ProductCategoryID = PC.ProductCategoryID
GROUP BY PC.ProductCategoryID;

--8) Write a query to  display all the product category names which has more than 10 products
SELECT PC1.Name from SalesLT.ProductCategory PC1 LEFT JOIN
(SELECT PC.ProductCategoryID, COUNT(P.ProductCategoryID) CATEGORY_COUNT
FROM SalesLT.Product P 
RIGHT JOIN SalesLT.ProductCategory PC 
ON P.ProductCategoryID = PC.ProductCategoryID
GROUP BY PC.ProductCategoryID) AS PC_COUNT ON PC1.ProductCategoryID = PC_COUNT.ProductCategoryID
WHERE PC_COUNT.CATEGORY_COUNT > 10;

--9) Write a query to display the total bill of the complete order after applying the discount.
SELECT SUM(SOH.TotalDue - SOH.TotalDue*SOD.UnitPriceDiscount*SOD.OrderQty) TOTAL_BILL
FROM SalesLT.SalesOrderDetail SOD LEFT JOIN 
SalesLT.SalesOrderHeader SOH ON SOD.SalesOrderID = SOH.SalesOrderID;

--10) Write a query to display the total sales of all the orders which applied discount.
SELECT SUM(SOH.TotalDue - SOH.TotalDue*SOD.UnitPriceDiscount*SOD.OrderQty) TOTAL_BILL
FROM SalesLT.SalesOrderDetail SOD LEFT JOIN 
SalesLT.SalesOrderHeader SOH ON SOD.SalesOrderID = SOH.SalesOrderID
WHERE SOD.UnitPriceDiscount > 0;

--11) Write a query to display the highest order bill details
SELECT MAX(SOH.TotalDue - SOH.TotalDue*SOD.UnitPriceDiscount*SOD.OrderQty)
FROM SalesLT.SalesOrderDetail SOD LEFT JOIN 
SalesLT.SalesOrderHeader SOH ON SOD.SalesOrderID = SOH.SalesOrderID;


--12) Write a query to display the lowest order bill details
SELECT MIN(SOH.TotalDue - SOH.TotalDue*SOD.UnitPriceDiscount*SOD.OrderQty)
FROM SalesLT.SalesOrderDetail SOD LEFT JOIN 
SalesLT.SalesOrderHeader SOH ON SOD.SalesOrderID = SOH.SalesOrderID;