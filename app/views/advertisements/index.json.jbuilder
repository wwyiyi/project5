json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :content, :user_id
  json.url advertisement_url(advertisement, format: :json)
end