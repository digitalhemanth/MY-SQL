select emp_name,salary 
from pytest.emps
order by salary desc 
OFFSET 2 ROW
LIMIT 1
