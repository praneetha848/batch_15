
{{ config(materialized='ephemeral') }}

WITH tb1 as(
    select
    id as cust_id,
    first_name as name,
    last_name as surname
    from {{source('datafeed_shared_schema','raw_customerdata')}})
select * from tb1
