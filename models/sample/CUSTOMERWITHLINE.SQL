select 

c.c_name, c.c_phone

FROM {{ ref('customersales') }}



