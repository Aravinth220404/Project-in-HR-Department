Select * 
from employees
where department_id =(
    select department_id 
    from departments 
    where department_name = 'HR'
);