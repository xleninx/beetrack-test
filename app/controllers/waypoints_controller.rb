class WaypointsController < ApplicationController

  def index
    @waypoints = Waypoint.all
    @hash = Gmaps4rails.build_markers(@waypoints) do |waypoin, marker|
      marker.lat waypoin.latitude
      marker.lng waypoin.longitude
      marker.infowindow waypoin.vehicle.identifier
    end
  end

end
