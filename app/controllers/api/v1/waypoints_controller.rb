class Api::V1::WaypointsController < ActionController::API

  def create
    @waypoint = Waypoint.new(waypoints_params)
    if @waypoint.valid?
      GpsProcessorJob.perform_later(waypoints_params.to_h)
      render json: { message: 'OK' }, status: :ok
    else
      render json: { message: 'Entidad no procesable', errors: @waypoint.errors }, status: :unprocessable_entity
    end
  end

  private

  def waypoints_params
    params.permit(:latitude, :longitude, :sent_at, :vehicle_identifier)
  end

  def find_or_create_vechicle
    Vehicle.find_or_create_by(indendifier: params[:identifier])
  end
end
