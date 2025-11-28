{{ config( materialized='table')  }}

with
emp_data as (
     select emp_id,
        First_Name, 
        salary as sal,
        tax_amount,
        ({{default__cents_to_dollars('salary')}}) as total_amount from 
         {{source('datafeed_shared_schema','emp')}}
)
select * from emp_data
