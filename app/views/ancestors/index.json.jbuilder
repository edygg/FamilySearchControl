json.array!(@ancestors) do |ancestor|
  json.extract! ancestor, :id, :names, :last_names
  json.url ancestor_url(ancestor, format: :json)
end
