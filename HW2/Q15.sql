SELECT FNAME, LNAME
FROM EMPLOYEE AS E
WHERE (SELECT COUNT(*) FROM DEPENDENT WHERE E.SSN = ESSN) >= 2;