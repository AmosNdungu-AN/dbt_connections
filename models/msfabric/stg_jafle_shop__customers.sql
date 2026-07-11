select
    ID as customer_id,
    FIRST_NAME as f_name,
    LAST_NAME as l_name
from
    {{source('streamflix_jaffle','customers')}}