{% snapshot pedido_snapshot %}

    {{
        config(
            unique_key='id_pedido',
            strategy='timestamp',
            update_at='data_registro',
        )
    }}

    SELECT 
        id,
        nome,
        email,
        telefone,
        data_registro
    FROM pedidos

{% endsnapshot %}