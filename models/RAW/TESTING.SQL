

select CUSTOMER_ID , {{markup()}}

from {{ ref('RAW_ORDERS') }}