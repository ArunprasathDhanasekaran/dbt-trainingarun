{{
    config(
        materialized='ephemeral',
        unique_key =['POSTAL_CODE', 'DOY_STD', 'DATE_VALID_STD']
    )
}}

select * 
from {{ source('inclearn', 'HISTORY_DAY') }}
