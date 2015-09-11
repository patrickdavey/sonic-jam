json.array!(@buffers) do |buffer|
  json.extract! buffer, :id, :name, :code
  json.url buffer_url(buffer, format: :json)
end
