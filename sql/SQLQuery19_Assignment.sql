USE AdventureWorksLT2008;
SELECT * FROM SalesLT.Product;


--1)Display productid, productname, standard cost, list price and tax where if
-- listprice > 1000 than tax is 5% 0f listprice
--listprice>500 and <1000 then tax is 3% of listprice
--listprice <= 500 then tax is 1% of listprice

SELECT ProductID, Name, StandardCost, ListPrice, "Tax"=
CASE
WHEN ListPrice > 1000 THEN 0.05 * ListPrice
WHEN ListPrice > 500 AND ListPrice < 1000 THEN 0.03 * ListPrice
ELSE 0.01 * ListPrice
END
FROM AdventureWorksLT2008.SalesLT.Product;

--2)Display all productid, productname and size where default size is medium when size is null.

SELECT ProductID, Name, "NewSize"=
CASE
WHEN Size IS NULL THEN 'MEDIUM'
ELSE Size
END
FROM AdventureWorksLT2008.SalesLT.Product;

--3)Display productid, productname, weight and range where if
--weight is null then not available
-- weight > 1000 than it is overweight
--weight < 1000 then weight is ok

SELECT ProductID, Name, Weight, 
CASE
WHEN Weight IS NULL THEN 'Not Available'
WHEN Weight > 1000 THEN 'Overweight'
ELSE 'Weight is Ok'
END "Range"
FROM AdventureWorksLT2008.SalesLT.Product;