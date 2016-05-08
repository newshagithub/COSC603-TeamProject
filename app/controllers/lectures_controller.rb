class LecturesController < ApplicationController
  before_action :set_lecture, only: [:show, :edit, :update, :destroy]

  # GET /lectures Student View
  def do_lecture
    @course = Course.find_by_id(params[:course_id])
    @lesson = Lesson.find_by_id(params[:id])
    @lectures = Lecture.find_by_course_id(params[:course_id])
    @course_id = params[:course_id]
    @lesson_id = params[:id]
    #@lecture_id = params[:lecture_id]

    #@lesson = Lesson.where(course_id: params[:course_id]).first

    @lecture_id = params[:lecture_id]
    @totalLectures = Lecture.where(course_id: @course_id, lesson_id: @lesson_id).count
    # @lecture = Lecture.where(course_id: @course_id, lesson_id: @lesson_id).select(:id)

    @lecture_id = params[:lecture_id].to_i + 1
    puts @lecture_id

    if(@lecture_id == nil)
      @lecture = Lecture.where(course_id: @course_id, lesson_id: @lesson_id).first
    elsif(Lecture.find_by_id_and_course_id_and_lesson_id(@lecture_id, @course_id, @lesson_id).blank?)
      flash[:notice] = 'Lesson: '+@lesson.name+' was successfully completed.'
      redirect_to :controller=> 'users', :action => 'overview'
      return
    else
      #@lecture_id = params[:lecture_id].to_i + 1
      puts @lecture_id
      @lecture = Lecture.find_by_id_and_course_id_and_lesson_id(@lecture_id, @course_id, @lesson_id)
    end


    puts @totalLectures
    @answer = @lecture.quizAnswers
    @options = @lecture.quizOptions.split("-")

    #course_id_next = params[:course_id]
    #lesson_id_next = params[:lesson_id].to_i
    lecture_id_next = params[:lecture_id].to_i+ 1
    #@next = {controller: "lectures", action: "do_lecture", course_id: @course_id, lesson_id: @lesson_id, lecture_id: lecture_id_next}
  end

  def view_lectures
    #@course = Course.where(params[:course_id])
    #@lesson_id = params[:lesson_id]
    #@lesson = Lesson.where(course_id: params[:course_id]).first

    #@lecture_id = params[:lecture_id]
    #@lecture = Lecture.where(lesson_id: @lesson_id).first

    #@course_id = params[:id]
    #@course = Course.find(@course_id)
    #@lessons = Lesson.where(course_id: @course_id)
    @course_id = params[:course_id]

    @lesson_id = params[:id]
    @lesson = Lesson.find(@lesson_id)
    @lectures = Lecture.where(lesson_id: @lesson_id, course_id: @course_id)
  end

  # GET /lectures
  # GET /lectures.json
  def index
    @lectures = Lecture.all
  end

  # GET /lectures/1
  # GET /lectures/1.json
  def show
  end

  # GET /lectures/new
  def new
    @lecture = Lecture.new
  end

  # GET /lectures/1/edit
  def edit
  end

  # POST /lectures
  # POST /lectures.json
  def create
    @lecture = Lecture.new(lecture_params)

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: 'Lecture was successfully created.' }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lectures/1
  # PATCH/PUT /lectures/1.json
  def update
    respond_to do |format|
      if @lecture.update(lecture_params)
        format.html { redirect_to @lecture, notice: 'Lecture was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecture }
      else
        format.html { render :edit }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lectures/1
  # DELETE /lectures/1.json
  def destroy
    @lecture.destroy
    respond_to do |format|
      format.html { redirect_to lectures_url, notice: 'Lecture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture
      @lecture = Lecture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecture_params
      params.require(:lecture).permit(:name, :reading, :quizQuestions, :quizAnswers, :lesson_id)
    end
end
