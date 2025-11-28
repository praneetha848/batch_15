

{{ config(materialized="incremental",
         incremental_strategy="insert_overwrite",
         
) }}

select * from {{source('datafeed_shared_schema','raw_order')}} where id in (20,22,23)