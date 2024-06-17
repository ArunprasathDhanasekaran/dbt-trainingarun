{{ config(
    materialized='incremental',
    
) }}

select *
from {{ ref('ephlearn') }}
{% if is_incremental() %}
where DATE_VALID_STD > (select max(DATE_VALID_STD) from {{ this }})
{% endif %}
