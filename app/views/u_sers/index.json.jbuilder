json.array!(@u_sers) do |u_ser|
  json.extract! u_ser, :id, :name
  json.url u_ser_url(u_ser, format: :json)
end
