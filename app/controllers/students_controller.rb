class StudentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def new
    @student = Student.new
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def show
    @student = Student.find_by(id: params[:id])
    session[:program_id] = @student.id
  end

  def create
    course_id = session[:program_id]
    course = Course.find_by(id: course_id)
    @student = course.students.create(student_params)
    # if @student.save
    #   redirect_to @student
    # else
    #   render "new"
    # end
    redirect_to course_path(course)
  end

  def update
    student = Student.find_by(id: params[:id])
    student.update(student_params)
    redirect_to student_path(student)
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit(:f_name, :l_name, :gender, :email, :mobile, :linkedin, :github_user, :twitter, :img, :bio)
  end
end
