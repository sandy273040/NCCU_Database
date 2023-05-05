SELECT FNAME, LNAME
FROM EMPLOYEE AS E
WHERE EXISTS(SELECT * FROM dependent WHERE E.SSN = ESSN)
	  AND EXISTS(SELECT * FROM DEPARTMENT AS D WHERE SSN = D.MGRSSN);