json.extract! relay_point, :id, :relay_point_id, :location, :capacity, :available_services, :contact_info, :created_at,
              :updated_at
json.url relay_point_url(relay_point, format: :json)
