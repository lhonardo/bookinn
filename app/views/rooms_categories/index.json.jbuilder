json.array!(@rooms_categories) do |rooms_category|
  json.extract! rooms_category, :id, :name
  json.url rooms_category_url(rooms_category, format: :json)
end
