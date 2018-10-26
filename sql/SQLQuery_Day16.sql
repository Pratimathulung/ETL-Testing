Use AdventureWorksLT2008;
Create table Customer_Contacts_2(
Cust_Name varchar(100),
Mobile_1 bigint,
Mobile_2 bigint,
Mobile_3 bigint
);

Insert into Customer_Contacts_2 (Cust_Name, Mobile_1, Mobile_2, Mobile_3)
Values('Ravi', NULL , 9521476585,NULL ), 
('Siva',Null , 9521476585,985217632 ),
('Hari', 9521476585, NULL, NULL),
('Hari', 9521476585, NULL, NULL),
('Hari',NULL, 9521476585, NULL)
;

Select* from Customer_Contacts_2;

Delete from Customer_Contacts_2;



INSERT INTO Customer_Contacts_2(Cust_Name,Mobile_1,Mobile_2,Mobile_3)
VALUES ('Ravi',8880801234,Null,6356987415)

INSERT INTO Customer_Contacts_2(Cust_Name,Mobile_1,Mobile_2,Mobile_3)
VALUES ('Siva',Null,9036987415,Null)

INSERT INTO Customer_Contacts_2(Cust_Name,Mobile_1,Mobile_2,Mobile_3)
VALUES ('Hari',9880564634,7046987415,Null)

INSERT INTO Customer_Contacts_2(Cust_Name,Mobile_1,Mobile_2,Mobile_3)
VALUES ('Prasad',Null,Null,7076987415)

INSERT INTO Customer_Contacts_2(Cust_Name,Mobile_1,Mobile_2,Mobile_3)
VALUES ('Krishna',8093456346,Null,8106987415)

INSERT INTO Customer_Contacts_2(Cust_Name,Mobile_1,Mobile_2,Mobile_3)
VALUES ('Sandy',Null,Null,Null)

SELECT * FROM Customer_Contacts_2

Create table Customer_Contacts_1(
Cust_Name varchar(100),
Mobile_1 bigint,
Mobile_2 bigint,
Mobile_3 bigint
);
Drop table Customer_Contacts_1;


Select Cust_Name,Mobile_1,Mobile_2 into Customer_Contacts_1 from Customer_Contacts_2;
Select * from Customer_Contacts_1;

SELECT Cust_Name,Mobile_1,Mobile_2
FROM Customer_Contacts_2


CREATE TABLE C2(
Cust_Name VARCHAR(20),
Mobile_1 BIGINT,
Mobile_2 BIGINT);

SELECT * FROM C2;

INSERT INTO C2
SELECT Cust_Name,Mobile_1,Mobile_2
FROM Customer_Contacts_2;

Select Cust_Name, ISNULL(Mobile_1, Mobile_2) as Mobile from Customer_Contacts_1;