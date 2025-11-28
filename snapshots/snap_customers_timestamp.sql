{% snapshot  snap_customers_timestamp %}

{{
    config(
    strategy='timestamp',
    unique_key='id',
    updated_at='load_time'
 )
}}
select * 
from {{source('datafeed_shared_schema','customers')}}

{% endsnapshot %}