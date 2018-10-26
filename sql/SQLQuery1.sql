create database EXERCISE_CONSTRAINTS;
USE EXERCISE_CONSTRAINTS;
CREATE TABLE Customer(
C_Id INT NOT NULL,
FirstName Varchar(255),
LastName Varchar(255),
EnrollDate Date,
City Varchar(255) NOT NULL);

INSERT INTO Customer
VALUES (100,'Sridhar','H','04/05/2016','HYD');

INSERT INTO Customer
VALUES (null,'Ravi','T','04/15/2016','HYD');

INSERT INTO Customer
VALUES (102,'Giri','T','04/15/2016',NULL);

SELECT * FROM Customer;

CREATE TABLE Customer_NEW(
C_Id INT NOT NULL,
FirstName Varchar(255),
LastName Varchar(255),
EnrollDate Date,
City Varchar(255) NOT NULL);


INSERT INTO Customer_NEW
VALUES (100,'Sridhar','H','04/05/2016','HYD');

INSERT INTO Customer_NEW
VALUES (101,'Ravi','T','04/15/2016','HYD');

INSERT INTO Customer_NEW
VALUES (102,'Giri','T','04/15/2016','KTM');

SELECT* FROM Customer_NEW;


CREATE TABLE Customer_UNIQUE(
C_Id INT UNIQUE,
FirstName Varchar(255),
LastName Varchar(255),
EnrollDate Date,
City Varchar(255) NOT NULL);



INSERT INTO Customer_UNIQUE
VALUES (NULL,'Sridhar','H','04/05/2016','HYD');

INSERT INTO Customer_UNIQUE
VALUES (NULL,'Ravi','T','04/15/2016','HYD');

INSERT INTO Customer_UNIQUE
VALUES (102,'Giri','T','04/15/2016','KTM');

SELECT* FROM Customer_UNIQUE;

INSERT INTO Customer
VALUES (0,'Kiran','M','09/05/2016','CHE');

INSERT INTO Customer
VALUES (-5,'Ram','T','04/25/2018','HYD');

INSERT INTO Customer
VALUES (112,'Ganesh','P','12/15/2017','asdf');

SELECT * FROM Customer;

CREATE TABLE Customer_CC(
C_Id INT CHECK(C_ID > 0),
FirstName Varchar(255),
LastName Varchar(255),
EnrollDate Date,
City Varchar(255) CHECK(CITY IN ('HYD','BNG','MAS','PUN','MUM')));

INSERT INTO Customer_CC
VALUES (0,'Kiran','M','09/05/2016','CHE');

INSERT INTO Customer_CC
VALUES (-5,'Ram','T','04/25/2018','HYD');

INSERT INTO Customer_CC
VALUES (112,'Ganesh','P','12/15/2017','HYDERABAD');

SELECT * FROM Customer_CC;

CREATE TABLE Customer_DEF(
C_Id INT ,
FirstName Varchar(255),
LastName Varchar(255),
EnrollDate Date DEFAULT GETDATE(),
City Varchar(255) DEFAULT 'HYD');

INSERT INTO Customer_DEF(C_ID,LastName,FirstName,City)
VALUES (120,'Kim','J','CHE');

INSERT INTO Customer_DEF(C_ID,LastName,FirstName)
VALUES (121,'Lahari','C');

SELECT * FROM Customer_DEF;