json.extract! food_place, :id, :name, :description, :address, :phone_number, :opening_hours, :created_at, :updated_at
json.url food_place_url(food_place, format: :json)
