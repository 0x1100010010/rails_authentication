json.extract! sign_up, :id, :username, :email, :password, :created_at, :updated_at
json.url sign_up_url(sign_up, format: :json)
