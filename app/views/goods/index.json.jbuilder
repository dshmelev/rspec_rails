json.array!(@goods) do |good|
  json.extract! good, :id, :title, :price
  json.url good_url(good, format: :json)
end
