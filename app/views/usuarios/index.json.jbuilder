json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido
  json.url usuario_url(usuario, format: :json)
end
