select 
    ID AS order_id,
    USER_ID AS customer_id,
    ORDER_DATE AS order_date,
    STATUS
from {{source('streamflix_jaffle','orders')}}