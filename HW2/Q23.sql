SELECT PNumber, PName
FROM Project, Works_On
WHERE Pnumber = PNo
GROUP BY PNumber, PName
HAVING COUNT(*) > 2;