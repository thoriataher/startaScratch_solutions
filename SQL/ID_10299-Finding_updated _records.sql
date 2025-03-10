-- Question--
-- We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.

-- Table: ms_employee_salary

-- Solution 
-- As we want to get the maximium salary of a employee assuming it increases each year,
-- we can use the MAX() function with a subquery to find the current salary.

select 
    id, 
    first_name, 
    last_name, 
    department_id, 
    MAX(salary) as Salary 
from 
    ms_employee_salary
GROUP BY 
    id;

-- Expected Output 
id	first_name	last_name	department_id	salary
1	Todd	Wilson	1006	110000
2	Justin	Simon	1005	130000
3	Kelly	Rosario	1002	42689
4	Patricia	Powell	1004	170000
5	Sherry	Golden	1002	44101