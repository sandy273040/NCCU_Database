SELECT FNAME, LNAME
FROM EMPLOYEE as E
WHERE E.SSN in 
	(select ESSN 
     from dependent AS D
     where E.FNAME = D.DEPENDENT_NAME AND E.SEX = D.SEX);