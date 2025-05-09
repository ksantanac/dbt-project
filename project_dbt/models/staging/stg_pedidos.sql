{{ config(
    materialized='incremental'
) }}

with source as (
    select
    *
    from {{ source('ecomerce','pedidos') }}
)

select
*
from source

{% if is_incremental() %}
    WHERE data_pedido >= (select max(data_pedido) from {{ this }})
{% endif %}