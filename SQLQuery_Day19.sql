USE PRACTICE_2;
CREATE TABLE Store_Information(
Store_Name varchar (100),
Sales int 
);
ALTER TABLE Store_Information 
ADD New_sales int;

INSERT INTO Store_Information values('LosAngeles', 1500),('SanDiego', 250), ('SanFrancisco', 300),
('Boston', 700)
SELECT * FROM Store_Information;
SELECT Store_Name, Sales, 2* Sales as NewSales from Store_Information


SELECT Store_Name, Sales,
CASE Store_Name
WHEN 'LosAngeles' THEN 2* Sales
WHEN 'SanDiego' THEN Sales*1.5
ELSE Sales
END "NewSales"
from Store_Information


SELECT Store_Name, Sales,
CASE 
WHEN SALES > 1000 THEN 2* Sales
WHEN SALES > 500 THEN Sales*1.5
ELSE Sales
END "NewSales"
from Store_Information

SELECT Store_Name,
CASE 
WHEN Sales >= 1000 THEN ' Its a Good day'
WHEN Sales >= 500 THEN 'Its an Ok Day'
ELSE 'Its a Bad Day'
END "Status"
from Store_Information;


USE AdventureWorksLT2008;
SELECT * FROM SalesLT.Product;

SELECT ProductNumber, Name, "Price Range" =
CASE
WHEN ListPrice = 0 THEN 'Mfg item- not for resale'
WHEN ListPrice < 50 THEN 'Under $50'
WHEN ListPrice >= 50  AND ListPrice < 250 THEN 'Under $250'
WHEN ListPrice >= 250  AND ListPrice < 1000 THEN 'Under $1000'
ELSE 'Over $1000'
END
FROM AdventureWorksLT2008.SalesLT.Product ORDER BY ProductNumber;


SELECT ProductNumber,Category=
CASE 'ProductLine'
WHEN 'R' THEN 'Road'
WHEN 'M' THEN 'Mountain'
WHEN 'T' THEN 'Touring'
WHEN 'S' THEN 'Other sale items'
ELSE 'Not for sale'
END
FROM AdventureWorksLT2008.salesLT.Product;

