json.extract! vehicle, :id, :vehicle_id, :type, :capacity, :maintenance_status, :location, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
