json.array!(@requests) do |request|
  json.extract! request, :id, :date, :time, :req_hours, :description, :user_id
  json.url request_url(request, format: :json)
end
