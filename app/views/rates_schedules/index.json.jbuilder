json.array!(@rates_schedules) do |rates_schedule|
  json.extract! rates_schedule, :id, :from, :to, :rate_id
  json.url rates_schedule_url(rates_schedule, format: :json)
end
