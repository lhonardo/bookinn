json.array!(@records) do |record|
  json.extract! record, :id, :reservation, :debt, :credit, :value, :date, :note
  json.url record_url(record, format: :json)
end
