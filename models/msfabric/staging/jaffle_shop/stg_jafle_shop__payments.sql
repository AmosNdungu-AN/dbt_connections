select
 ID as payment_id,
 ORDERID as order_id,
 PAYMENTMETHOD as payment_method,
 STATUS as payment_status,
 -- amount is stored in cents, convert it to dollars
 AMOUNT / 100 as payment_amount,
 CREATED as payment_created
from {{source('streamflix_jaffle','payments')}}