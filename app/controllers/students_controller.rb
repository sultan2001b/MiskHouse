class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def edit
    @student = Stude
  end

  def show
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student
    else
      render "new"
    end
  end

  def update
  end

  def index
  end

  private
  def student_params
    params.require(:student).permit(:f_name, :l_name, :gender, :email, :mobile, :linkedin, :github_user, :twitter, :img, :bio)
  end

end

