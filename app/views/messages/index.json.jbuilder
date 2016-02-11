json.array!(@messages) do |message|
  json.extract! message, :id, :user_id, :name
  json.url message_url(message, format: :json)
end
