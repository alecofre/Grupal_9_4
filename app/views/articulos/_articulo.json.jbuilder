json.extract! articulo, :id, :nombre, :descripcion, :condicion, :precio, :marca_id, :user_id, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
