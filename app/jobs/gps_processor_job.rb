class GpsProcessorJob < ApplicationJob
  queue_as :default

  def perform(waypoint_params)
    Waypoint.new(waypoint_params).save
  end
end
