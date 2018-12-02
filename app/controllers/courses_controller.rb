class CoursesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    session[:program_id] = @course.id
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update
    course = Course.find_by(id: params[:id])
    course.update(course_params)
    redirect_to course_path(course)
  end

  def new
    @course = Course.new
  end

  def create
    program_id = session[:program_id]
    program = Program.find_by(id: program_id)
    course = program.courses.create(course_params)
    redirect_to program_path(program)
  end

  def destroy
    course = Course.find_by(id: params[:id])
    course.destroy
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :img, :short_description, :long_description, :duration)
  end
end
