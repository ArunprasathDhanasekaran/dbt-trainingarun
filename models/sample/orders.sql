{{
    config(
        materialized='table'
    )
}}

select * from {{ source('TPCH_SF1', 'orders') }}