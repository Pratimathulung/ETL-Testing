use EXERCISE_CONSTRAINTS;
--1) Create a Table MEDICINE_COMPANY with 2 columns
--M_COMP_ID(PK), M_COMP_NAME
CREATE TABLE MEDICINE_COMPANY(
M_COMP_ID integer,
M_COMP_NAME varchar(50),
primary key (M_COMP_ID)
);

--2) Create a table MEDICINES with column names as M_ID,  M_Name, M_QTY, M_PRICE, M_MFG_DATE, M_EXP_DATE,M_COMP_ID by applying below conditions
--M_ID should be PK
--All columns should not be blank/Null
--M_QTY should not be less than or equals to Zero
--M_PRICE should be default to 0 if nothing specifies while Inserting
--M_MFG_DATE should not be greater than the current date
--M_EXP_DATE should not be less than the current date
--M_COMP_ID value should exist in MEDICINE_COMPANY Table

CREATE TABLE MEDICINES(
M_ID integer PRIMARY KEY,
M_NAME varchar(100) NOT NULL CHECK(M_NAME > ''),
M_QTY integer NOT NULL CHECK(M_QTY > 0),
M_PRICE decimal(10, 2) NOT NULL DEFAULT 0,
M_MFG_DATE date NOT NULL CHECK(M_MFG_DATE <= GETDATE()),
M_EXP_DATE date NOT NULL CHECK(M_EXP_DATE >= GETDATE()),
M_COMP_ID integer FOREIGN KEY REFERENCES MEDICINE_COMPANY(M_COMP_ID)
);

--4) Insert 8-10 records in MEDICINE_COMPANY table.
INSERT INTO MEDICINE_COMPANY(M_COMP_ID, M_COMP_NAME)
VALUES(100, 'Amgen'),
(101, 'Cipla'),
(102, 'Cinnagen'),
(103,'Merck & Co'),
(104, 'Renovo PLC'),
(105, 'McGuff'),
(106, 'Perrigo'),
(107, 'Solvay Group'),
(108, 'Ipsen'),
(109, 'Noxxon'),
(110, 'UCB');

--5) Insert at least 20 records(valid data) in MEDICINES table.
INSERT INTO MEDICINES(M_ID, M_NAME, M_QTY, M_PRICE, M_MFG_DATE, M_EXP_DATE,M_COMP_ID)
VALUES -- (1, 'Ketazol', 10, 143.65, '2018-01-01', '2018-11-11', 100),
(2, 'Nizoral', 10, 143.65, '2017-02-01', '2018-11-9', 100),
(3, 'Panamor', 30, 8.555, '2018-01-02', '2018-12-11', 101),
(4, 'Amdocin', 100, 26.89, '2018-01-05', '2019-11-11', 104),
(5, 'Betacin', 100, 26.65, '2018-01-01', '2018-12-11', 101),
(6, 'Voltaren', 5, 65.59, '2018-01-01', '2018-11-24', 110),
(7, 'Roxifen', 30, 33.33, '2018-01-11', '2018-11-15', 102),
(8, 'Betagesic', 1000, 249.69, '2018-01-01', '2018-11-11', 105),
(9, 'Brufen', 1000, 294.65, '2018-01-03', '2018-11-11', 102),
(10, 'XYCAM', 30, 28.33, '2018-01-01', '2018-11-16', 106),
(11, 'Linafen', 1000, 294.35, '2018-01-12', '2018-11-11', 103),
(12, 'IBU', 1000, 294.91, '2018-01-01', '2019-11-11', 107),
(13, 'Bren', 1000, 243.65, '2018-01-13', '2018-11-11', 106),
(14, 'Maxolon', 100, 26.37, '2018-02-01', '2019-11-11', 104),
(15, 'Sandoz', 10, 143.65, '2018-02-01', '2018-11-11', 108),
(16, 'Apex', 25, 66.65, '2018-01-03', '2018-11-11', 108),
(17, 'Cyclivex', 22, 65.65, '2018-01-09', '2018-11-11', 109),
(18, 'Flamecid', 100, 26.89, '2018-01-05', '2018-11-11', 103),
(19, 'Methocaps', 100, 25.69, '2018-01-01', '2018-11-11', 105),
(20, 'Diclohexal', 5, 65.62, '2018-01-01', '2019-11-11', 110);
