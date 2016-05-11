json.array!(@debts) do |debt|
  json.extract! debt, :id, :name
  json.url debt_url(debt, format: :json)
end
