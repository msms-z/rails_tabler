json.extract! verify_code, :id, :code, :mobile, :is_success, :res_json, :created_at, :updated_at
json.url verify_code_url(verify_code, format: :json)
