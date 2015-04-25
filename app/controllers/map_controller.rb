class MapController < ApplicationController
  def index
    @points = Point.all
    @hash = Gmaps4rails.build_markers(@points) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
      marker.json({title: user.title})
    end
  end
end
