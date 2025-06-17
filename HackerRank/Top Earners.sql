--the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.
SELECT max(salary * months), COUNT(*)
FROM Employee
where (salary*months)>= (select max(salary*months) from employee);
