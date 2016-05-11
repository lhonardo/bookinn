json.array!(@people) do |person|
  json.extract! person, :id, :name, :document_id, :documentcontent, :email, :country_id, :state_id, :city_id, :address, :postalcode, :phone, :dayofbirth, :note
  json.url person_url(person, format: :json)
end
