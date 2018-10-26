use AdventureWorksLT2008;


-- 1) Write a query to display complete Address details of the Country (United Kingdom/Canada)
Select * from SalesLT.Address;
SELECT AddressLine1, AddressLine2, City, StateProvince, CountryRegion, PostalCode from SalesLT.Address
WHERE CountryRegion='Canada' or CountryRegion='United Kingdom';

-- 2) Write a query to display the customer First name, Last name, companyName for all the customers who doesn't have their Middle names.
Select * from SalesLT.Customer;
SELECT FirstName, LastName, CompanyName from SalesLT.Customer WHERE MiddleName IS NULL;

--3) Write a query to display all the customer details with name in Alphabetical order.
Select * from SalesLT.Customer;
SELECT * FROM SalesLT.Customer ORDER BY FirstName ASC;

--4) Write a query to display all the Customer names whose name starts with letter J
SELECT FirstName from SalesLT.Customer WHERE FirstName LIKE'J%';

--5) Write a query to display the list of all companies where the customers are working in alphabetical order
SELECT CompanyName from SalesLT.Customer ORDER BY CompanyName ASC;

--6) Write a query to display the no of customers exist
SELECT COUNT(CustomerID) AS NoOfCustomer FROM SalesLT.Customer;

--7) Write a query to display the Customer first name & Company name which Company name has the word 'Limited'
SELECT FirstName, CompanyName from SalesLT.Customer WHERE CompanyName LIKE '%Limited';

--8) Write a query to  display number customers whose doesn't have their middle names
SELECT COUNT(FirstName) as CustomerWithoutMiddleName FROM SalesLT.Customer 
WHERE MiddleName IS NULL;

--9) Write a query to display number of Male customers available in DB
SELECT FirstName from SalesLT.Customer as MaleCustomers WHERE Title = 'Mr.';

--10)  Write a query to display the number of customers working in 'Shipping'
SELECT * from SalesLT.CustomerAddress;
SELECT COUNT(CustomerID) AS TotalCustomersinShipping FROM SalesLT.CustomerAddress 
WHERE AddressType='Shipping';

--11) Write a query to display the different types of company addresses the customers are working
 

--12) Write a query to display all the Product names which are in Blue color
SELECT * FROM SalesLT.Product;
SELECT Name as BlueColoredProducts  from SalesLT.Product WHERE Color='Blue';

--13) Write a query to display the ProductNumber & Product name which has Multi color and the list price is between 100 & 1000
SELECT Name, ProductNumber from SalesLT.Product
WHERE Color = 'Multi' AND ListPrice BETWEEN 100 AND 1000;

--14) Write a query to display all Product names which has both Size & wieght
SELECT Name from SalesLT.Product WHERE Size IS NOT NULL AND Weight IS NOT NULL;

--15) Write a query to display the number of Products which doesnt have Images
SELECT COUNT(ProductID) as TotalCount from SalesLT.Product 
where ThumbnailPhotoFileName LIKE 'no_image_available%' ;

--16) Write a query to display the number of colors available in the DB
SELECT COUNT(DISTINCT Color) AS TotalColor from SalesLT.Product;

--17) Write a query to display ProductNumber, ProductName, Color & the Profit on each product .
SELECT ProductNumber, Name, Color, (ListPrice-StandardCost) AS Profit  FROM SalesLT.Product;

--18) Write a query to display the total Costprice of all the products in the Product category 20 to 50
SELECT SUM(StandardCost)AS TotalCost FROM SalesLT.Product WHERE ProductCategoryID BETWEEN 20 AND 50;
