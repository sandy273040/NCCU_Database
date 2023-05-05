SELECT e.FNAME as employee_fname, e.LNAME as employee_lname, 
	   s.FNAME as super_fname,  s.LNAME as super_lname
FROM employee as e, employee as s
WHERE e.superssn = s.ssn;