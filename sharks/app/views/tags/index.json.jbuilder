json.array!(@tags) do |tag|
  json.extract! tag, :id, :number, :lat, :lon, :shark_id, :angler_id, :comments, :five_miles, :date, :tagger_id, :method, :condition, :length, :weight, :species
  json.url tag_url(tag, format: :json)
end
