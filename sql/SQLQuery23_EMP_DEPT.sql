USE MASTER;
use EMP_DEPT;
CREATE DATABASE EMP_DEPT;
select * from Department;
select * from Employees;
sp_help Department;

SELECT* FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE CONSTRAINT_TYPE = 'foreign KEY'
AND TABLE_NAME = 'Employees' AND TABLE_SCHEMA = 'dbo';


ALTER TABLE Department add primary key(DEPTNO);

-- Adding not null constraint to EMPNO
ALTER TABLE Employees alter column EMPNO int not null;

--Making EMPNO primary key
ALTER TABLE Employees add primary key(EMPNO);


ALTER TABLE Employees ADD FOREIGN KEY (DEPTNO) REFERENCES Department(DEPTNO);

-- IT FAILS BECAUSE IT IS REFERENCED AS FOREIGN KEY ON EMPLOYEES
DROP TABLE Department;

ALTER TABLE EMPLOYEES
ALTER COLUMN HIRE_DATE DATE;