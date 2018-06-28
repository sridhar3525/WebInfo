json.extract! event, :id, :EventName, :EventDate, :EventLocation, :EventAddress, :EventDescription, :created_at, :updated_at
json.url event_url(event, format: :json)
