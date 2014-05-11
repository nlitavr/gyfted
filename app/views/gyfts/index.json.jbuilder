json.array!(@gyfts) do |gyft|
  json.extract! gyft, :id, :name, :description, :desire, :price
  json.url gyft_url(gyft, format: :json)
end
