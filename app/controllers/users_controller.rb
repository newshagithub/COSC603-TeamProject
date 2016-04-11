class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def overview

  end
end