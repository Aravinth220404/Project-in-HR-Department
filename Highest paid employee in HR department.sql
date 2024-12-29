select employee_id, first_name, last_name, hire_date
from employees
where department_id = (
    select department_id 
    from departments 
    where department_name = 'HR'
)
order by hire_date;
