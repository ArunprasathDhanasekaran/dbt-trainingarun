select 

c_name, c_phone

from {{ ref('customersales') }}

LEFT JOIN

SELECT 

o_orderdate,o_orderstatus

FROM {{ ref('stg_TPCH_SF1__ORDERS') }}

ON c_custkey=o_custkey

