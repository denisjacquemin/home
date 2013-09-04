json.array!(@properties) do |property|
  json.extract! property, :title, :ref, :price, :old_price, :description, :address, :agence_id
  json.url property_url(property, format: :json)
end
