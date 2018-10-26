USE EXERCISE_JOINS;

CREATE TABLE Product(
ProductID varchar (20),
ProductName varchar(50)
);

DROP TABLE Product;
CREATE TABLE Product_Price(
Prod_ID varchar (20),
Price int
);

INSERT INTO Product VALUES('p1', 'Santoor soup'),
('p2', 'Ponds Powder'),
('p3', 'Ariel Surf'),
('p4', 'Harpic'),
('p5', 'Dettol');

INSERT INTO Product_Price VALUES('P1', 35),
('P2', 50),
('P3', 200),
('P5', 90),
('P6', 28);

SELECT * FROM Product;

SELECT * FROM Product_Price;

SELECT * FROM Product AS P 
INNER JOIN Product_Price AS PR
ON P.ProductID = PR.Prod_ID;

SELECT * FROM Product AS P 
LEFT JOIN Product_Price AS PR
ON P.ProductID = Pr.Prod_ID;

SELECT * FROM Product P 
RIGHT JOIN Product_Price PR
ON P.ProductID = PR.Prod_ID;


SELECT * FROM Product P
FULL JOIN Product_Price PR
ON P.ProductID = PR.Prod_ID;


CREATE TABLE Patient(
PatientID int,
PatientName varchar(20),
AdmitDate date
);

CREATE TABLE Patient_Room(
Pat_ID int,
RoomNo int
);


SELECT * FROM Patient;
INSERT INTO Patient VALUES (123, 'C', '2014-10-05'),
(456, 'B', '2014-06-15'),
(345, 'A', '2014-05-02'),
(425, 'D', '2014-05-10'),
(600, 'E', '2014-10-21');

INSERT INTO Patient_Room VALUES (123, 100),
(456, 102),
(425, 101),
(600, 200),
(788, 222);

SELECT * FROM Patient_Room;

SELECT * FROM Patient AS PA
INNER JOIN Patient_Room AS PR
ON PA.PatientID = PR.Pat_ID;

SELECT * FROM Patient AS PA
LEFT JOIN Patient_Room AS PR
ON PA.PatientID = PR.Pat_ID;

SELECT * FROM Patient AS PA
RIGHT JOIN Patient_Room AS PR
ON PA.PatientID = PR.Pat_ID;

SELECT * FROM Patient AS PA
FULL JOIN Patient_Room AS PR
ON PA.PatientID = PR.Pat_ID;
