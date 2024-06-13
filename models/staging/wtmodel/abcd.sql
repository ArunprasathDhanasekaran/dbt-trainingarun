

{{
    config(
        materialized='incremental' 
        
    )
}}

select * FROM {{ source('wtmodel', 'FORECAST_DAY') }}

{% if is_incremental() %}

where event_time > (select max (event_time) from {{this}})

{% endif %}