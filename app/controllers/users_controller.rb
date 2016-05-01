class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def overview
    #@current_user ||= User.find(session[:user_id])

    @courses=Course.all

  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:avatar)
  end
end