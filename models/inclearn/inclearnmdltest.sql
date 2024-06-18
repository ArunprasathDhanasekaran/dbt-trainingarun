{{
    config(
        materialized='incremental',
        unique_key= ['POSTAL_CODE','DOY_STD','DATE_VALID_STD'],
        incremental_strategy='merge'
    )
}}

select * from {{ ref('inclearnmdl') }}