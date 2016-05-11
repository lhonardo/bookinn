json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :description, :maxpax, :area, :rooms_category_id
  json.url room_url(room, format: :json)
end
