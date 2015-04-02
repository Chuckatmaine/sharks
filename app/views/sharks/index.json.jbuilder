json.array!(@sharks) do |shark|
  json.extract! shark, :id, :species, :sex
  json.url shark_url(shark, format: :json)
end
