with
source as (
    select * from {{source('stripe','payment')}}
-- select * from back_to_school.stripe.payment

)

renamed as (
    select
        id as payment_id
        ,orderid as order_id
        ,status
        ,amount
        ,created
        ,_batched_at

    from source
)