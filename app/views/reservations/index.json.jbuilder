json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :company_id, :person_id, :in, :out, :inreal, :outreal, :note, :customvalue
  json.url reservation_url(reservation, format: :json)
end
