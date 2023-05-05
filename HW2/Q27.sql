Select Lname, Fname
From Employee
Where Not Exists
( Select *
From Works_On B
Where (B.PNo in ( Select Pnumber
From Project
Where Dnum=5) )
And
Not Exists (Select *
From Works_On C
Where C.ESSN=SSN AND C.Pno=B.Pno ) );