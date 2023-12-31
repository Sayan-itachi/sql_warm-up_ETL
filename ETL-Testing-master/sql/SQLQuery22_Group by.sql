USE EXERCISE1;
SELECT * FROM EMPLOYEE;

SELECT GENDER, COUNT(EMPLOYEENO) AS NOOFEMPLOYEE
FROM EMPLOYEE 
GROUP BY GENDER;

SELECT TRIM(DEPTNAME), COUNT(EMPLOYEENO) AS NOOFEMPLOYEES
FROM EMPLOYEE 
GROUP BY TRIM(DEPTNAME);

SELECT DeptNo, SUM(SALARY) AS TOTALSALARY
FROM EMPLOYEE
GROUP BY DeptNo;

select DeptNo, Gender,
Avg(SALARY) AS AverageSalary
from EMPLOYEE
group by DEPTNO, Gender;

SELECT trim(Deptname) as DeptName,GENDER, count(EMPLOYEENO) as Totalemployee
from EMPLOYEE
GROUP BY trim(Deptname), GENDER
ORDER BY TRIM(Deptname);