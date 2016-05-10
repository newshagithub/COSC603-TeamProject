class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /course student selected
  def do_course

    # set a couple of variables with the params object
    @course = Course.find_by_id(params[:course_id])
    @lectures = Lecture.find_by_course_id(params[:course_id])
    @course_id = params[:course_id]
    @lesson_id = params[:lesson_id]

    # -------check if course is over
    first_id_in_course = Lecture.select(:id).where(course_id: @course_id).first
    last_id_in_course = Lecture.select(:id).where(course_id: @course_id).last

    # -------check if lesson is over
    # get first and last lecture of this lesson for traversing the quiz
    first_id_in_lesson = Lecture.select(:id).where(course_id: @course_id, lesson_id: @lesson_id).first
    last_id_in_lesson = Lecture.select(:id).where(course_id: @course_id, lesson_id: @lesson_id).last

    # this is the id of the current lecture
    @lecture_id = first_id_in_lesson.id.to_i + params[:lecture_id].to_i - 1

    # is the course over? => set the flag accordingly
    if @lecture_id == last_id_in_course.id.to_i
      @course_over = true
    else
      @course_over = false
    end

    # is the lesson over? => set the flag accordingly
    if @lecture_id == last_id_in_lesson.id.to_i
       @lesson_over = true
    else
      @lesson_over = false
    end

    # retrieve the lesson and the quiz content
    @lesson = Lesson.where(course_id: params[:course_id]).first
    @lecture = Lecture.find(@lecture_id)
    @answer = @lecture.quizAnswers
    @options = @lecture.quizOptions.split("-")

    # percentage of the lesson the user has already taken
    @progress = 100.*(@lecture_id.to_f - first_id_in_lesson.id.to_f)/(last_id_in_lesson.id.to_f - first_id_in_lesson.id.to_f)

    # these are the course, lesson and lecture ids for the next question
    if @course_over
      @next = {controller: "users", action: "saveProgress",
               course_id: @course_id, lesson_id: @lesson_id, lecture_id: @lecture_id}
    elsif @lesson_over
      course_id_next = params[:course_id]
      lesson_id_next = params[:lesson_id].to_i + 1
      lecture_id_next =  1
      @next = {controller: "courses", action: "do_course", course_id: course_id_next, lesson_id: lesson_id_next, lecture_id: lecture_id_next}
    else
      course_id_next = params[:course_id]
      lesson_id_next = params[:lesson_id]
      lecture_id_next = params[:lecture_id].to_i + 1
      @next = {controller: "courses", action: "do_course", course_id: course_id_next, lesson_id: lesson_id_next, lecture_id: lecture_id_next}
    end

  end

  def view_courses
    @courses = Course.all
  end

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.order("created_at DESC")
  end

  # GET /courses/1
  # GET /courses/1.json
  def show

  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      #@course = Course.find(params[:course_id])
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :progress)
    end
end
