select 

c_name, c_phone

from {{ ref('customersales') }}

LEFT JOIN

SELECT 

o_orderdate,o_orderstatus

FROM {{ ref('ORDERS1') }}

ON c_custkey=o_custkey

