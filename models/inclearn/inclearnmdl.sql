{{
    config(
        materialized='incremental',
        unique_key=['POSTAL_CODE', 'DOY_STD','DATE_VALID_STD'],
        incremental_strategy='merge'
    )
}}

select * 
from {{ ref('stg_inclearn__FORECAST_DAY') }}
{% if is_incremental() %}
where DATE_VALID_STD >= (select max(DATE_VALID_STD) from {{ this }})
{% endif %}
