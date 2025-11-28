{{ config( materialized='table'),
     }}

with
emp_data as (
     select emp_id,
        First_Name, 
        salary,
        tax_amount,
        ({{calculate_amount('salary','tax_amount')}}) as total_amount from 
         {{source('datafeed_shared_schema','emp')}}
)
select * from emp_data
