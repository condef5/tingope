json.extract! tourist_place, :id, :name, :description, :address, :phone_number, :opening_hours, :website_url, :photo, :label, :created_at, :updated_at
json.url tourist_place_url(tourist_place, format: :json)
