json.array!(@pictures) do |picture|
  json.extract! picture, :id, :url, :width, :height
  json.url picture_url(picture, format: :json)
end
