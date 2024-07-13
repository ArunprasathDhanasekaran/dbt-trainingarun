{{
    config(
        materialized='table'
    )
}}

select * from {{ source('new_snowflake', 'JSON_WEATHER_DATA') }}