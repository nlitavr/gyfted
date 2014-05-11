json.array!(@locations) do |location|
  json.extract! location, :id, :url, :gyft_id
  json.url location_url(location, format: :json)
end
