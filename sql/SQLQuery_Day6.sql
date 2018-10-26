USE MASTER;
CREATE DATABASE EXERCISE1;
USE EXERCISE1;

CREATE TABLE CRICKET
(
PlayerId INT,
PlayerName varchar(25),
Age INT,
Location varchar(25),
NoOfMatches BIGINT,
NoOfInnings BIGINT,
Runs BIGINT,
Centuries INT,
Fifties INT,
Average Decimal(7,2),
Sixers INT,
Fours INT,
Wickets INT,
FiveWickets INT
);
 
 
SELECT * FROM CRICKET;

INSERT INTO EXERCISE1.dbo.CRICKET VALUES
(1,'Dhawan',26,'Delhi',85,65,3232,5,25,null,55,122,0,0),
(2,'Rahane',22,'Delhi',75,60,1622,3,36,null,44,154,1,0),
(3,'Kohli',27,'Pune',150,122,6555,10,54,null,66,166,10,0),
(4,'Rohit',26,'Mumbai',148,111,5456,6,45,null,35,122,23,0),
(5,'Raina',25,'Bangalore',96,65,2352,5,66,null,45,136,33,1),
(6,'Dhoni',35,'Pune',250,222,8877,22,120,null,88,222,5,0),
(7,'Ashwin',30,'Mumbai',196,144,4222,1,36,null,29,145,101,6),
(8,'Shewag',37,'Delhi',266,231,7444,24,132,null,88,236,145,7),
(9,'Sachin',44,'Mumbai',325,295,11000,50,150,null,122,333,166,12),
(10,'Ganguly',42,'Mumbai',300,265,10121,32,144,null,111,321,174,19),
(11,'Gambir',35,'Delhi',222,188,6545,26,56,null,101,269,0,0),
(12,'Patel',31,'Mumbai',111,99,2233,1,33,null,64,123,66,2),
(13,'Pathan',32,'Mumbai',169,155,3223,3,22,null,25,111,144,12),
(14,'Laxman',39,'Hyderabad',333,301,9966,22,99,null,77,300,0,0),
(15,'Zaheerkhan',35,'Pune',212,202,1252,0,16,null,21,89,198,19),
(16,'Umesh',24,'Bangalore',56,35,564,0,0,null,3,10,56,1),
(17,'Buvaneshwar',25,'Delhi',88,77,999,1,4,null,13,45,88,3),
(18,'Shami',25,'Bangalore',45,30,356,0,1,null,2,12,44,2),
(19,'Sreekanth',29,'Pune',111,95,674,0,1,null,5,32,63,3),
(20,'Dravid',42,'Mumbai',365,310,10652,28,188,null,133,344,0,0);




CREATE TABLE EMPLOYEE
(
EMPLOYEENO INT,
EMPNAME VARCHAR(100),
GENDER VARCHAR(1),
BIRTHPLACE VARCHAR(100),
DOB DATE,
CURRENTLOCATION VARCHAR(50),
DESIGNATION VARCHAR(50),
DATEOFJOINING DATE,
SALARY DECIMAL(10,2),
DEPTNO INT,
DEPTNAME VARCHAR(50),
DATEOFLEAVING DATE,
TOTALEXPERIENCE DECIMAL(3,1),
MANAGERID INT,
ADDRESS VARCHAR(255),
BONUS DECIMAL(7,2)
);


INSERT INTO EXERCISE1.DBO.Employee
VALUES
(1,'Ashok','M','hyderabad','1991-12-27','hyderabad','QA LEAD','2012-12-21',50000,11,'IT',null,4.3,1,'h.no-123,aditya nagar',5000),
(2,'Giri','M','nellore','1987-03-26','hyderabad','SR ACCOUNTANT','2008-03-20',80000,22,'finance','2012-08-17',4.5,3,'h.no79 komal nagar',8000),
(3,'Mike','M','vijayanagaram','1972-08-12','pune','VP','1993-08-07',90000,88,'HR',null,23.8,3,'h.no-23 ashok nagar',9000),
(4,'david','M','karimnagar','1992-11-09','banglore','JR ADMIN','2013-11-04',65000,33,'admin',null,3.4,2,'h.no-45 gandhi street',6500),
(5,'saritha','F ','adilabad','1984-04-16','banglore','ACCOUNTANT','2005-04-11',45000,44,'finance',null,11.1,2,'h.no-78 lakdikapool',4500),
(6,'Suresh','M','ramagundam','1980-08-20','chennai','QA','2001-08-15',25000,99,'IT','2006-04-19',4.6, 1,'h.no-23 basha street',2500),
(7,'ramesh','M','suryapet','1987-08-18','pune','SE','2008-08-12',55000,55,'IT',null,8.6,1,'h.no-75 basin mahal',5500),
(8,'sagar','M','nizambad','1983-02-15','pune','SR ACCOUNTANT','2004-02-10',80000,22,'finance',null,13.1,4,'h.no-90 thermal colony',8000),
(9,'kannappa','M','khammam','1993-05-24','noida','TRAINEE ','2014-05-19',10000,10,'IT',null,2.9,3,'h.no-235 champak nagar',1000),
(10,'sirisha','F','east godavari','1986-01-24','delhi','ACCOUNTANT','2007-01-19',45000,44,'finance',null,10.2,4,'h.no-23 jeedimetla',4500),
(11, 'gayathri','F','west godavari','1989-01-14','noida','SE',' 2010-01-09',55000,55,'IT',null,2, 4 ,'h.no-75 mogambi nagar',5500),
(12, 'pravalika','F','srikakulam','1990-11-26','hyderabad','SR IT','2011-11-21',62000,77,'IT',null,5.3,3,'h.no 89 srinivasa colony',6200),
(13,'hari ','M ',' adilabad ','1991-01-21','banglore','QA','2012-01-16',25000,99,' IT','2014-06-13',2.2,2,'h.no-12 samatha nagar',2500),
(14 , 'prasad','M','bhimavaram','1982-12-30','hyderabad','QA LEAD','2003-12-25',50000,11,'IT',null,13.2,5,'h.no-54 addagutta',5000),
(15,'anil','M','guntur','1993-09-29','noida','JR IT','2014-09-24',42000,66,'IT','2016-06-12',1.5,5,'h.no-93 prabha colony',4200);

SELECT * FROM EMPLOYEE;