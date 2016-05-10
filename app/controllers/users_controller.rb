class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def overview
    #@current_user ||= User.find(session[:user_id])

    @courses=Course.all
    self.saveProgress(params)

  end

  def saveProgress params
    record_to_update = Progress.find_by_user_id_and_course_id(params[:user_id], params[:course_id])

    if record_to_update.nil?
    Progress.create!(user_id: params[:user_id], course_id: params[:course_id], lesson_id: params[:lesson_id],
                    lecture_id: params[:lecture_id])
    else
      #record_to_update.update(course_id: 1)
      record_to_update.update(course_id: params[:course_id], lesson_id: params[:lesson_id],
                             lecture_id: params[:lecture_id])
    end

  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:avatar)
  end
end