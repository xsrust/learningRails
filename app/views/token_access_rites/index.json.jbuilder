json.array!(@token_access_rites) do |token_access_rite|
  json.extract! token_access_rite, :id
  json.url token_access_rite_url(token_access_rite, format: :json)
end
