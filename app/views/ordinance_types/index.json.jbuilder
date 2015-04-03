json.array!(@ordinance_types) do |ordinance_type|
  json.extract! ordinance_type, :id, :name
  json.url ordinance_type_url(ordinance_type, format: :json)
end
