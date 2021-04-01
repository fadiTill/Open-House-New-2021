json.extract! house, :id, :address, :price, :size, :type, :bedrooms, :bathrooms, :comment, :created_at, :updated_at
json.url house_url(house, format: :json)
