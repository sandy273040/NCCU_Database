SELECT PNumber, PName, COUNT(*)
FROM Project, Works_On
WHERE Pnumber = PNo
GROUP BY PNumber, PName;