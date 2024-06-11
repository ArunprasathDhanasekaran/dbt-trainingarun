{{
    config(
        materialized='table'
    )
}}

select * from {{ source('TPCDS_SF100TCL', 'CATALOG_PAGE') }}