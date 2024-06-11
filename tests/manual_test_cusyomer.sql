select CUSTOMERNAME
from {{ ref('RAW_CUSTOMER') }}
where CUSTOMERNAME is null