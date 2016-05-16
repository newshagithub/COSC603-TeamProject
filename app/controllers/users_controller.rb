class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def overview
    #@current_user ||= User.find(session[:user_id])
    # if the user navigates to this page by exiting the quiz, save the progress
    if !params[:save].nil?
      self.saveProgress(params)
    end

    @courses=Course.all

    # set up arrays for length of the progress bars for the quizzes
    @number_of_courses = Course.last.id.to_i
    @progress = Array.new(@number_of_courses).fill(0)
    #prepare lesson and lecture id used in the view
    @lesson_id = Array.new(@number_of_courses).fill(1)
    @lecture_id = Array.new(@number_of_courses)

    (0..@number_of_courses-1).each do |i|
      @lecture_id[i] = Lecture.where(course_id: i+1).first.id
    end

    #name of the links to the quizzes: either "Start" or "Resume"
    @link_name = Array.new(@number_of_courses).fill("Start")

    #count number of badges for the user
    @number_of_badges = 0

    # caluclate length of progress bars, and set the lesson id, lecture id and number of badges if necessary
    (0..@number_of_courses-1).each do |i|
     last_lecture = Progress.find_by_user_id_and_course_id(current_user,i+1)
      if !last_lecture.nil?
        number_of_lectures = Lecture.where(course_id: i+1).count.to_f
        first_lecture_in_course = Lecture.where(course_id: i+1).first.id.to_f

        @progress[i] = 100.* (last_lecture.lecture_id.to_f - first_lecture_in_course +1)/number_of_lectures
        if @progress[i] < 100
          @link_name[i] = "Resume"
        end

        @lesson_id[i] = last_lecture.lesson_id
        @lecture_id[i] = last_lecture.lecture_id

        #update number of badges
        if last_lecture.lesson_id > 1
          @number_of_badges = @number_of_badges + last_lecture.lesson_id.to_i - 1
        end
      end
    end

  end

  def saveProgress params
    record_to_update = Progress.find_by_user_id_and_course_id(params[:user_id], params[:course_id])

    if record_to_update.nil?
    Progress.create!(user_id: params[:user_id], course_id: params[:course_id], lesson_id: params[:lesson_id],
                    lecture_id: params[:lecture_id])
    else
      record_to_update.update(course_id: params[:course_id], lesson_id: params[:lesson_id],
                             lecture_id: params[:lecture_id])
    end

  end

  def saveProgress2 params
    record_to_update = Progress.find_by_user_id_and_course_id_and_lesson_id_and_lecture_id(params[:user_id],
                                                                                           params[:course_id],
                                                                                           params[:lesson_id],
                                                                                           params[:lecture_id])
    if record_to_update.nil?
      Progress.create!(user_id: params[:user_id], course_id: params[:course_id], lesson_id: params[:lesson_id],
                       lecture_id: params[:lecture_id])
    else
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