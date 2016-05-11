json.array!(@companies) do |company|
  json.extract! company, :id, :name, :corporatename, :juridicaldocument, :extradocument, :email, :country_id, :state_id, :city_id, :address, :postcode, :phone, :note
  json.url company_url(company, format: :json)
end
