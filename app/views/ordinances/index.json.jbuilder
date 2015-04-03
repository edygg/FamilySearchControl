json.array!(@ordinances) do |ordinance|
  json.extract! ordinance, :id, :performed_in
  json.url ordinance_url(ordinance, format: :json)
end
