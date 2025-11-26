select
 salary
 from {{ref('EMPLOYEES_SALARY')}}
 having salary < 0

