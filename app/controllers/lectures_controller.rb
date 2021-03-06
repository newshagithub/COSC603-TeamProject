class LecturesController < ApplicationController
  before_action :set_lecture, only: [:show, :edit, :update, :destroy]


  # GET /lectures Student View
  def do_lecture
    #set the parameters
    @course_id = params[:course_id]
    @lesson_id = params[:lesson_id]
    @lecture_id = params[:lecture_id]


    @course = Course.find_by_id(params[:course_id])
    @lesson = Lesson.find_by_id(params[:lesson_id])

    @fixed_lesson_id = @lesson.lesson_id_fix.to_s

    puts @fixed_lesson_id.to_s

    @lectures = Lecture.find_by_course_id(params[:course_id])


    #for progress bar
    @counter = params[:counter].to_i
    #@totalLectures = Lecture.where(course_id: @course_id, lesson_id: @lesson_id).count
    #this is a bandaid for an error in creating the seed file
    @totalLectures = Lecture.where(course_id: @course_id, lesson_id: @fixed_lesson_id).count
    #@lecture_id = params[:lecture_id]
    #@lesson = Lesson.where(course_id: params[:course_id]).first
    # @lecture = Lecture.where(course_id: @course_id, lesson_id: @lesson_id).select(:id)

    #check first and increment lecture
    if(@lecture_id == nil)
      @lecture_id = nil
    else
      @lecture_id = params[:lecture_id].to_i + 1
    end

    #set lecture to be shown
    if(@lecture_id == nil) #first lecture
      @lecture = Lecture.where(course_id: @course_id, lesson_id: @fixed_lesson_id).first
      @counter = 0
    #elsif(Lecture.find_by_id_and_course_id_and_lesson_id(@lecture_id, @course_id, @lesson_id).blank?) #last lecture
    elsif(Lecture.find_by_id_and_course_id_and_lesson_id(@lecture_id, @course_id, @fixed_lesson_id).blank?) #last lecture
      flash[:notice] = 'Lesson: '+@lesson.name+' was successfully read, please take the quiz to test your knowledge.'
      redirect_to :controller=> 'users', :action => 'overview'
      return
    else #middle lecture
      @counter += 1
      #@lecture = Lecture.find_by_id_and_course_id_and_lesson_id(@lecture_id, @course_id, @lesson_id)
      @lecture = Lecture.find_by_id_and_course_id_and_lesson_id(@lecture_id, @course_id, @fixed_lesson_id)
    end

    #set quizzes once right lecture found
    #@answer = @lecture.quizAnswers
    #@options = @lecture.quizOptions.split("-")
  end

  def grade_lecture
    @course_id = params[:course_id]
    @lesson_id = params[:id]
    @lecture_id = params[:lecture_id]
    @option = params[:option]
    @counter = params[:counter]

    puts @option

    @lecture = Lecture.find_by_id_and_course_id_and_lesson_id(@lecture_id, @course_id, @lesson_id)
    #set quizzes once right lecture found
    @answer = @lecture.quizAnswers
    @options = @lecture.quizOptions.split("-")

    if(@option.to_s == @answer.to_s)
      #save prgress goes here
      #success
      redirect_to :action => 'do_lecture', course_id: @course_id, id: @lesson_id, lecture_id: @lecture_id, counter: @counter
    else
      #failure prevent incremet
      flash[:alert] = 'Wrong Answer, try again'
      redirect_to :action => 'do_lecture', course_id: @course_id, id: @lesson_id, lecture_id: @lecture_id.to_i-1, counter: @counter.to_i-1
    end

  end

  # GET /Lectures student view
  def view_lectures
    @course_id = params[:course_id]
    @lesson_id = params[:id]

    @lesson = Lesson.find(@lesson_id)
    @fixed_lesson_id = @lesson.lesson_id_fix
    puts "lession fix: "+@fixed_lesson_id
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
