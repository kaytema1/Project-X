json.extract! user_profile, :id, :user_type, :about_me, :gender, :unit_of_measure, :address, :city, :country, :country_code, :phone, :user_id, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
