SELECT DNUMBER, COUNT(*)
FROM DEPARTMENT, EMPLOYEE
WHERE DNUMBER=DNO AND SALARY>30000 AND
DNO IN (SELECT DNO
		FROM　EMPLOYEE
		GROUP BY DNO
		HAVING COUNT(*) > 2)
GROUP BY DNUMBER;