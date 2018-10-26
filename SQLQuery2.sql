use AdventureWorksLT2008;
Select * from SalesLT.Customer;
Select count(CustomerID) from SalesLT.Customer;
Select FirstName, len(FirstName) as NoOfCharacters from SalesLT.Customer;
Select substring(FirstName,2,3), Upper(FirstName) as Capital, Lower(FirstName)as Small from SalesLT.Customer
Select LastName, len(LastName) as NoOfCharacters from SalesLT.Customer;
Select Replace(Title,'Ms', 'Mrs') from SalesLT.Customer;
Select *, Getdate() as CurrentDateAndTime from SalesLT.Customer;

Select * from SalesLT.SalesOrderDetail;
Select Sum(OrderQty)as TotalOrder from SalesLT.SalesOrderDetail;
Select Avg(UnitPrice) as AveragePrice from SalesLT.SalesOrderDetail;
Select Min(UnitPrice) as MinimumPrice from SalesLT.SalesOrderDetail;
Select Max(UnitPrice) as MaximumPrice from SalesLT.SalesOrderDetail;
Select ProductID, UnitPrice, Round(UnitPrice, 1) AS RoundedPrice from SalesLT.SalesOrderDetail;
Select count(SalesOrderID)as TotalOrder from SalesLT.SalesOrderDetail;
Select Avg(UnitPrice) as AveragePrice from SalesLT.SalesOrderDetail where OrderQty=6;
Select sum(UnitPrice) from SalesLT.SalesOrderDetail where UnitPriceDiscount=0.40;
Select ProductID, UnitPrice from SalesLT.SalesOrderDetail where UnitPrice>100;
Select sum(UnitPrice * OrderQty) as total from SalesLT.SalesOrderDetail;

Select * from SalesLT.Product;
Select Upper(Name) as Capital, Lower(Color)as Small from SalesLT.Product;
select Name, Color from SalesLT.Product where Color='Black';
Select sum(ListPrice) from SalesLT.Product;
Select count(Size) as totalsmallsize from SalesLT.Product where Size='S'; 
Select round(ListPrice,3) as roundedPrice from SalesLT.Product;
Select Name, Size from SalesLT.Product where Size='58';
Select Sum(IFNULL(Weight,1016)) as totalWeight from SalesLT.Product;
Select Max(Weight) as maxWeight from SalesLT.Product;
Select substring(Name,7,11) from SalesLT.Product;
Select avg(ListPrice) from SalesLT.Product where Color='Multi';