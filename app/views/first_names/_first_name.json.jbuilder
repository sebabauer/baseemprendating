json.extract! first_name, :id, :last_name, :maiden_name, :formatted_name, :phonetic_first_name, :phonetic_last_name, :formatted_phonetic_name, :headline, :location, :industry, :current_share, :num_connections, :num_connections_capped, :sumary, :specialties, :positions, :picture_url, :picture_url_original, :site_standard_profile_request, :api_standard_profile_request, :public_profile_url, :email_address, :created_at, :updated_at
json.url first_name_url(first_name, format: :json)