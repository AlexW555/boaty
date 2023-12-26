json.extract! report, :id, :boat_id, :user_id, :description, :created_at, :updated_at
json.url report_url(report, format: :json)
