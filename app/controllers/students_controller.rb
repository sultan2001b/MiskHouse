class StudentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    if current_user.student == nil
      @student = Student.new
    else
      redirect_to root_path
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def show
    @student = Student.find_by(id: params[:id])
    session[:program_id] = @student.id
  end

  def create
    arr = []
    params["courses"].each do |k, v|
      arr.push(v)
    end

    # params[:picture].each_pair {|key,value|
    # …
    # }

    # raise
    student = Student.new
    student.f_name = student_params["f_name"]
    student.l_name = student_params["l_name"]
    student.gender = student_params["gender"]
    student.email = student_params["email"]
    student.mobile = student_params["mobile"]
    student.linkedin = student_params["linkedin"]
    student.github_user = student_params["github_user"]
    student.twitter = student_params["twitter"]
    student.img = student_params["img"]
    student.bio = student_params["bio"]
    student.user_id = current_user.id

    student.save

    arr.each do |a|
      course = Course.find_by(name: a)
      student.courses << course
    end

    redirect_to root_path
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
