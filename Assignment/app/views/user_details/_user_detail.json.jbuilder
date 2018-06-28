json.extract! user_detail, :id, :username, :firstname, :middlename, :lastname, :emailAddress, :password, :phoneno, :dateOfBirth, :created_at, :updated_at
json.url user_detail_url(user_detail, format: :json)
