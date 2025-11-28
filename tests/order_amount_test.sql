select emp_id,
sum(salary) as amount from {{ref('employees_salary' )}}
group by emp_id having amount <0