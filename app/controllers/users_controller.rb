class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to event_path(Event.find_by(id: params[:event_id]))
    else
      render 'users/new'
    end
  end

  def show

  end

  private

  def user_params
    known_attrs = {event_id: params[:event_id]}
    params.require(:user).permit(:fname, :lname, :email, :phone).merge(known_attrs)
  end
end