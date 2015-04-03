json.array!(@senders) do |sender|
  json.extract! sender, :id, :names, :last_names, :phone, :nim, :lds_user, :lds_password, :adult, :young
  json.url sender_url(sender, format: :json)
end
