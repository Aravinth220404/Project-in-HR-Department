select employee_id, first_name, last_name, job_id
from employees
where job_id in (
    select job_id
    from jobs
    where job_title like '%HR%'
);