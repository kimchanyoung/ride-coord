class VehiclesController < ApplicationController
  def index
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to event_path(Event.find_by(id: params[:event_id]))
    else
      render 'vehicles/new'
    end
  end

  def show
    @vehicle = Vehicle.find_by(id: params[:id])
  end

  private

  def vehicle_params
    known_attrs = { event_id: params[:event_id] }
    params.require(:vehicle).permit(:name).merge(known_attrs)
  end
end