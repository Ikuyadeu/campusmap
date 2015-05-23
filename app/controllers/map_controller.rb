class MapController < ApplicationController
  def index
    @points = Point.all
    @hash = Gmaps4rails.build_markers(@points) do |point, marker|
      marker.lat point.latitude
      marker.lng point.longitude
      #marker.picture.url point.picURL
      #marker.picture ({
      #    "url" => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
      #    "width" => 36,
      #    "height" => 36
      #})
      marker.infowindow point.description
      marker.json({name: point.name})
    end
  end
end
