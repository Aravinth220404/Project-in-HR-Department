select sum(salary) as total_salary
from employees
where department_id = (
    select department_id
    from departments
    where department_name = 'HR'
);