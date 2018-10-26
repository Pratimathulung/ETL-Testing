USE EMP_DEPT;

--1) Write a query to Display the DEPT details from department table.
SELECT * FROM Department;

--2) Write a query to Display the EMP details from employees
SELECT * FROM Employees;

--3) Write a query to Display empno, ename and job for all employees
SELECT EMPNO, ENAME, JOB FROM Employees;

--4) Write a query to Display all the details of Senior Management
SELECT * FROM Employees WHERE JOB LIKE 'Sr%';

--5) Write a query  to List the employees who joined before 1982
SELECT * FROM Employees WHERE HIRE_DATE < '1982';

--6) Write a query  to List the empno, ename, detpno, hiredate, and Experience of all Employees.
SELECT EMPNO, ENAME, DEPTNO, HIRE_DATE, 
DATEDIFF(YEAR, HIRE_DATE, GETDATE()) AS EXPERIENCE
FROM Employees;

--7) Write a query to Display all the details of the employees whose Commision is more 
--than their Sal.
SELECT * FROM Employees 
WHERE COMMISION > SALARY;

--8) Write a query to List the employees along with their Experience and whose 
--Daily Sal is more than Rs 10000
SELECT  ENAME, SALARY,
DATEDIFF(YEAR, HIRE_DATE, GETDATE()) AS EXPERIENCE
FROM Employees
WHERE SALARY > 10000;

--9) Write a query to display employee details whose SAL should be less than or equals
-- to 100000
SELECT * FROM Employees 
WHERE SALARY <= 100000;

--10) Write a query to Display the names of all the employees and their experience in years.
SELECT  ENAME,
DATEDIFF(YEAR, HIRE_DATE, GETDATE()) AS EXPERIENCE
FROM Employees

--11) Write a query to List  employee number, name ,job and hiredate of employees in 
department 600.
SELECT EMPNO, ENAME, JOB, HIRE_DATE
FROM EMPLOYEES
WHERE DEPTNO = 600;

--12) Select the name and salary of all employees who are BA's
SELECT ENAME , SALARY FROM Employees
WHERE JOB = 'BA';


--13) Display the unique Dept’s of employees.
SELECT DISTINCT DEPTNO
FROM Employees;

--14) Display employeess whose Salary is more than 20000 after giving 20%increment.
SELECT * FROM EMPLOYEES 
WHERE (SALARY + (SALARY * 0.2)) >20000;

--15) List the Empno,Ename and Sal is increasedby 20%
SELECT EMPNO, ENAME, (SALARY + (SALARY * 0.2)) AS INCREASEDSALARY
FROM Employees;

--16) Display the unique Dept with Jobs.
SELECT DISTINCT DEPTNO, JOB FROM EMPLOYEES;

--17) List all MANAGERs  & BA'a
SELECT * FROM EMPLOYEES
WHERE JOB IN ('BA', 'MD', 'PM', 'DM');

--18) Display all employee names and their salaries whose salary is not in the 
--range on 50000 and 100000.The column Heading to be displayed as 
-- EmployeeName     MonthlySalary

SELECT ENAME AS EmployeeName, SALARY AS MonthlySalary
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 50000 AND 100000;

--19) Display the name of the employee who don’t have any manager.
SELECT * FROM EMPLOYEES
WHERE MANAGER IS NULL;

--20) Display the name, salary and commission for all employees whose commission amount is 
--greater than their salary increased by 10%
SELECT ENAME, SALARY, COMMISION FROM Employees 
WHERE COMMISION > (SALARY +(SALARY * 0.1));

--21) Display the Ename, Salary as Oldsalary and salary increased by 15% expressed as a whole 
--number and Label the column as NewSalary. In addition to this display the increase of salary 
--over the previous one.
SELECT ENAME, SALARY AS OldSalary, (SALARY + (SALARY * 0.15)) AS NewSalary 
, ((SALARY + (SALARY * 0.15)) - SALARY) AS INCREASE
FROM EMPLOYEES;

--22) Display the Employee name, hiredate, salary review date which is the first Monday after 
--6 months of the service.
SELECT ENAME, HIRE_DATE, 
DATEADD(DAY,9-DATEPART(DW,DATEADD(MONTH, 6, HIRE_DATE)),DATEADD(MONTH, 6, HIRE_DATE))
AS ReviewDate FROM EMPLOYEES;

--23) Display employee number and total Monthly Salary for each employees.
SELECT EMPNO, (SALARY + COMMISION) AS TOTAL_SALARY
FROM EMPLOYEES;

--24) Display employee number and annual salary for each employees.
SELECT EMPNO, ((SALARY * 12) + (COMMISION *12)) AS ANNUAL_SALARY
FROM EMPLOYEES;

--25) Display the names of all employees who are working in department number 100.
SELECT ENAME FROM EMPLOYEES 
WHERE DEPTNO = 100;

--26) Display the names of all employees working as DM/PM and drawing a salary more than 20000.
SELECT ENAME FROM EMPLOYEES 
WHERE JOB IN ('DM', 'PM') AND SALARY > 20000;

--27) Display employee number and names for employees who earn commission.
SELECT EMPNO, ENAME FROM EMPLOYEES
WHERE COMMISION <> 0;

--28) Display names of employees who do not earn any commission
SELECT ENAME FROM Employees
WHERE COMMISION = 0;

--29) Display the names of employees who are working as QA, DEV or HR and drawing a salary
-- more than 25000.
SELECT ENAME, JOB, SALARY FROM EMPLOYEES
WHERE JOB IN ('QA', 'DEV', 'HR') AND SALARY > 25000;

--30) Display the names of employees who are working in the company for the past 5 years.
SELECT ENAME FROM EMPLOYEES
WHERE DATEDIFF(YEAR, HIRE_DATE, GETDATE()) = 5;

--31) Display the list of employees who have joined the company before 30 NOV 2010.
SELECT * FROM EMPLOYEES 
WHERE HIRE_DATE < '2010-11-30';

--32) Display current user name
SELECT CURRENT_USER;

--33)Display current date
SELECT CONVERT(DATE, GETDATE());

--34) List the first 10 records of the EMP table.
SELECT * FROM EMPLOYEES
WHERE EMPNO BETWEEN 1 AND 10;

--35) List the Employees empno, ename, sal and the column heading as Emp_Num,Emp_Name,salary
SELECT EMPNO AS Emp_Num, ENAME AS Emp_Name, SALARY AS Salary 
from EMPLOYEES;

--36) Display the job and the no.of persons working in each job type.
SELECT JOB, COUNT(DEPTNO) FROM EMPLOYEES
GROUP BY JOB;

--37) Display the name and salary of all employees who are HR's.
SELECT ENAME, SALARY FROM EMPLOYEES
WHERE JOB = 'HR';

--38) List the name, job and salary of everyone hired on 16-03-2007.
SELECT ENAME, JOB, SALARY FROM EMPLOYEES
WHERE HIRE_DATE = '2007-03-16'

--39) List the Department name and department number for departments with numbers 
--greater than or equals to 200.
SELECT DNAME, DEPTNO FROM Department
WHERE DEPTNO >= 200;

--40) Display the names of employees working in department number 100 or 200 and 
--employees working as QA or DEV.
 SELECT ENAME, DEPTNO, JOB FROM EMPLOYEES 
 WHERE DEPTNO IN (100, 200) AND (JOB LIKE 'QA%' OR JOB LIKE 'SE%');

--41) Display the name, monthly salary, daily salary and hourly salary for all employees.
-- Assume that SAL column in the table is monthly salary; that there are 22 working days 
--in a month and that there are 8 working hours in a day. Rename the columns as MONTHLY,DAILY 
--and HOURLY.
SELECT ENAME, SALARY AS MONTHLY_SALARY, (SALARY / 22) AS DAILY_SALARY,
((SALARY / 22) / 8) AS HOURLY_SALARY FROM EMPLOYEES;

--42) Display details of Dinesh employee.
SELECT * FROM Employees E 
JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO
 WHERE E.ENAME = 'dinesh';

--43)Display details of Srikanth employee.
SELECT * FROM Employees E 
JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO
 WHERE E.ENAME = 'srikanth';

--44) Display the names of employees whose name starts with alphabet M
SELECT * FROM Employees WHERE ENAME like 'M%';

--45) Display the names, job of employees whose job ends with alphabet R
SELECT ENAME, JOB FROM Employees WHERE JOB like '%r';

--46) List the names of employees whose name is exactly four character in length
SELECT ENAME FROM EMPLOYEES 
WHERE ENAME LIKE '____';

--47) List the names, jobs of employees whose name have second alphabet 'A'
SELECT ENAME, JOB FROM EMPLOYEES 
WHERE ENAME LIKE '_A%';

--48) Display the names of employees who are not working as managers
SELECT ENAME FROM EMPLOYEES
WHERE JOB NOT IN ('MD', 'PM', 'DM');

--49) Display all employees joined on 2 MAY 1981.
SELECT * FROM EMPLOYEES 
WHERE HIRE_DATE = '1981-05-02';

--50) Display empno,ename,hiredate of all employees joined before 1 JAN 2005
SELECT EMPNO, ENAME, HIRE_DATE FROM Employees
WHERE HIRE_DATE < '2005-01-01';









