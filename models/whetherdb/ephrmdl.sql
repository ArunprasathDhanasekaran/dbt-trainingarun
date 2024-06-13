{{
    config(
        materialized='ephemeral' ,
        unique_key = ['POSTAL_CODE','TIME_INIT_UTC','DOY_STD']
    )
}}

select * from {{ source('srcdata', 'FORECAST_DAY') }} 

--{% if is_incremental() %}

--where DATE_VALID_STD >= (select max (DATE_VALID_STD)from {{this}})

--{% endif %}