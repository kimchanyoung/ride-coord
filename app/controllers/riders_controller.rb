class RidersController < ApplicationController
  def index
  end

  def new
    @rider = Rider.new
  end

  def create
    @rider = Rider.new(rider_params)
    if @rider.save
      redirect_to event_path(Event.find_by(id: params[:event_id]))
    else
      render 'riders/new'
    end
  end

  def show

  end

  private

  def rider_params
    known_attrs = {event_id: params[:event_id]}
    params.require(:rider).permit(:fname, :lname, :email, :phone).merge(known_attrs)
  end
end