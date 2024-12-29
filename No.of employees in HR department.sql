select count(*) as hr_employee_count
from employees
where department_id = (
    select department_id 
    from departments 
    where department_name = 'HR'
);