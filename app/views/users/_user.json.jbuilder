json.extract! user, :id, :name, :email, :department_id, :representative_id, :created_at, :updated_at
json.url user_url(user, format: :json)
