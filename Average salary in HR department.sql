select employee_id, first_name, last_name, salary
from (
    select employee_id, first_name, last_name, salary
    from employees
    where department_id = (
        select department_id
        from departments
        where department_name = 'HR'
    )
   order by salary desc
)
where rownum = 1;