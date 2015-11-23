class SessionController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: session_params[:username])
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end
end