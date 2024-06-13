{{
    config(
        materialized='incremental' ,
        unique_key =['POSTAL_CODE','TIME_INIT_UTC','DOY_STD']
    )
}}

select * from {{ source('src_whether', 'FORECAST_DAY') }}