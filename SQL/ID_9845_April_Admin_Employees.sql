-- Count of employees -> working in the admin department 
select 
    COUNT(first_name) AS n_admins
from 
    worker
WHERE 
    department = 'Admin' AND joining_date >= '2014-04-01';

-- Output
n_admins
4