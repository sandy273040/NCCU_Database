use company;
Select Lname, Fname
From Employee
Where Salary > all (
Select Salary
From Employee
Where Dno=5);