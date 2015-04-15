json.array!(@points) do |point|
  json.extract! point, :id, :name, :description, :latitude, :longitude
  json.url point_url(point, format: :json)
end
