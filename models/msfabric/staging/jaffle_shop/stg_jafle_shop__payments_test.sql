select
 order_id,
 sum(payment_amount) as payment_amount
from {{ ref('stg_jafle_shop__payments') }}
group by order_id
having sum(payment_amount) < 0
