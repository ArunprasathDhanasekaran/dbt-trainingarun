{{
    config(
        materialized='incremental',
        unique_key=['POSTAL_CODE', 'TIME_INIT_UTC', 'DOY_STD']
    )
}}

insert into {{ source('tgt', 'tgtbll') }} (
    POSTAL_CODE,
    COUNTRY,
    TIME_INIT_UTC,
    DATE_VALID_STD,
    DOY_STD,
    MIN_TEMPERATURE_AIR_2M_F
)
select
    POSTAL_CODE,
    COUNTRY,
    TIME_INIT_UTC,
    DATE_VALID_STD,
    DOY_STD,
    MIN_TEMPERATURE_AIR_2M_F
from {{ source('srcdata', 'FORECAST_DAY') }};
