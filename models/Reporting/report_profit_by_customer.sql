select
    CUSTOMER_ID
    ,SEGMENT
    ,COUNTRY
    ,SUM(ORDER_PROFIT) AS TOTAL_PROFIT
from 
{{ ref('stg_orders') }}
GROUP BY
CUSTOMER_ID
    ,SEGMENT
    ,COUNTRY