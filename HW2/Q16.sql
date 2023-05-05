use company;
Select Distinct ESSN
From Works_On
Where Pno In
(Select PNo
From Works_On
Where ESSN=123456789);