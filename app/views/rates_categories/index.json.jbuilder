json.array!(@rates_categories) do |rates_category|
  json.extract! rates_category, :id, :onepax, :twopax, :extra, :onepaxsp, :twopaxsp, :extrasp, :rooms_category_id, :rate_id
  json.url rates_category_url(rates_category, format: :json)
end
