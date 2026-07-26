with 

source as (

    select * from {{ ref('stg_jafle_shop__orders') }}

),

renamed as (

    select
        order_id,
        customer_id,
        order_date

    from source

)

select * from renamed