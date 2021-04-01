json.extract! guest, :id, :name, :address, :phone_number, :email, :comment, :created_at, :updated_at
json.url guest_url(guest, format: :json)
