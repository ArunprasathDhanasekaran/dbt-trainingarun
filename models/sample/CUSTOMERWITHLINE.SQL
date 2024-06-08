select 

c.c_name, c.c_phone, o_orderdate , o_orderstatus

FROM {{ ref('orders') }}



