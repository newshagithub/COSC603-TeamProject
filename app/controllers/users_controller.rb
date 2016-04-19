class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def overview

  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :description, :avatar)
  end
end