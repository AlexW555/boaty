json.extract! boat, :id, :name, :description, :location, :boat_type, :coxxed, :distance, :available, :created_at, :updated_at
json.url boat_url(boat, format: :json)
