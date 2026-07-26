select 
    ID AS order_id,
    USER_ID AS customer_id,
    ORDER_DATE AS order_date,
    STATUS AS order_status
from {{source('streamflix_jaffle','orders')}}