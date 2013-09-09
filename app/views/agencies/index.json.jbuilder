json.array!(@agencies) do |agency|
  json.extract! agency, :name, :address, :phone, :gsm, :email
  json.url agency_url(agency, format: :json)
end
