use EXERCISE1;
SELECT * FROM EMPLOYEE;

--1) Write a query to display the number of employees working in each location

Select CURRENTLOCATION, COUNT(EMPLOYEENO) AS NoOfEmployees
FROM EMPLOYEE
GROUP BY CURRENTLOCATION; 

--2) Write a query to display the total salary paid by the company to each Department
SELECT TRIM(DEPTNAME) AS DeptName, SUM(SALARY) AS TotalSalary
FROM EMPLOYEE
GROUP BY TRIM(DEPTNAME);

--3) Write a query to display number of employees in each departments who are 
--working in the company more than 3 years
SELECT TRIM(DEPTNAME) AS DEPARTMENT, COUNT(TOTALEXPERIENCE) AS NoOfEmployee
FROM EMPLOYEE WHERE TOTALEXPERIENCE > 3
GROUP BY TRIM(DEPTNAME);

--4) Write a query to display the total salary paid by the company to each
-- Department in each location
SELECT CURRENTLOCATION, TRIM(DEPTNAME) AS Department, SUM(SALARY + BONUS) AS TotalSalary
FROM EMPLOYEE
GROUP BY CURRENTLOCATION, TRIM(DEPTNAME)
ORDER BY CURRENTLOCATION;

--5) Write a query to display the number of employees currently working in each
-- department in the company

SELECT TRIM(DEPTNAME), COUNT(EMPLOYEENO) AS NoofEmployees
FROM EMPLOYEE
WHERE DATEOFLEAVING IS NULL
GROUP BY TRIM(DEPTNAME);


SELECT CURRENTLOCATION,DEPTNAME,SUM(SALARY+BONUS) AS TOTALSALARY 
FROM EMPLOYEE
GROUP BY CURRENTLOCATION,DEPTNAME


SELECT CURRENTLOCATION,DEPTNAME,SUM(SALARY+BONUS) AS TOTALSALARY -- will throw us error
FROM EMPLOYEE
GROUP BY CURRENTLOCATION

SELECT CURRENTLOCATION,SUM(SALARY+BONUS) AS TOTALSALARY  --it will run 
FROM EMPLOYEE
GROUP BY CURRENTLOCATION,DEPTNAME

SELECT SUM(SALARY+BONUS) AS TOTALSALARY --it will run
FROM EMPLOYEE
GROUP BY CURRENTLOCATION,DEPTNAME

SELECT CURRENTLOCATION,DEPTNAME -- it will run
FROM EMPLOYEE
GROUP BY CURRENTLOCATION,DEPTNAME

SELECT * -- it will throw error
FROM EMPLOYEE
GROUP BY CURRENTLOCATION,DEPTNAME

SELECT CURRENTLOCATION,DEPTNO,SUM(SALARY+BONUS) AS TOTALSALARY --throw error
FROM EMPLOYEE
GROUP BY CURRENTLOCATION,DEPTNAME

--Principle of GROUP BY CLAUSE
--eligible colunm should display in select by clause
--eligible clause are those that are there in group by clause and all aggreate function


--WRITE A QUERY TO DISPLAY THE TOTAL SALARY FOR EACH DESIGNATION 
SELECT DESIGNATION, SUM(SALARY + BONUS)
FROM EMPLOYEE
GROUP BY DESIGNATION;

--WRITE A QUERY TO DISPLAY THE TOTAL SALARY FOR EACH DESIGNATION WHOSE SALARY > 20000
SELECT DESIGNATION, SUM(SALARY + BONUS) AS TOTALSALARY
FROM EMPLOYEE
WHERE SALARY > 20000
GROUP BY DESIGNATION;

--WRITE A QUERY TO DISPLAY THE TOTAL SALARY FOR EACH DESIGNATION WHOSE TOTAL DESIGNATION SALARY > 60000
SELECT DESIGNATION, SUM(SALARY + BONUS) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY DESIGNATION
HAVING (SALARY + BONUS) > 60000;