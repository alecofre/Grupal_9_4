json.extract! pedido, :id, :fechaEntrega, :user_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
