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
    if params[:id] == current_user.student.id.to_s || current_user.admin == true
      @student = Student.find_by(id: params[:id])
    else
      redirect_to root_path
    end
  end

  def show
    @student = Student.find_by(id: params[:id])
    session["student_id"] = @student.id
  end

  def create
    arr = []
    if params["courses"] != nil
      params["courses"].each do |k, v|
        arr.push(v)
      end
    end

    student = Student.new
    student.f_name = student_params["f_name"]
    student.l_name = student_params["l_name"]
    student.gender = student_params["gender"]
    student.email = current_user.email
    student.mobile = student_params["mobile"]
    student.linkedin = student_params["linkedin"]
    student.github_user = student_params["github_user"]
    student.twitter = student_params["twitter"]
    req = Cloudinary::Uploader.upload(student_params["img"])
    student.img = req["url"]
    student.bio = student_params["bio"]
    student.user_id = current_user.id
    student.save

    params["projects"].each do |index, project|
      hash_project = JSON.parse(project)
      name_proj = hash_project["name"]
      url_proj = hash_project["html_url"]
      language_proj = hash_project["language"]
      description_proj = hash_project["description"]
      proj = Project.create(name: name_proj, url: url_proj, language: language_proj, description: description_proj)
      # student = Student.find_by(id: params[:id])
      student.projects << proj
    end

    arr.each do |a|
      course = Course.find_by(name: a)
      student.courses << course
    end

    redirect_to root_path
  end

  def update
    arr = []

    if params["courses"] != nil
      params["courses"].each do |k, v|
        arr.push(v)
      end
    end

    params["projects"].each do |index, project|
      hash_project = JSON.parse(project)
      name_proj = hash_project["name"]
      url_proj = hash_project["html_url"]
      language_proj = hash_project["language"]
      description_proj = hash_project["description"]
      proj = Project.create(name: name_proj, url: url_proj, language: language_proj, description: description_proj)
      student = Student.find_by(id: params[:id])
      student.projects << proj
    end

    student = Student.find_by(id: params[:id])
    student.f_name = student_params["f_name"]
    student.l_name = student_params["l_name"]
    student.gender = student_params["gender"]
    student.email = current_user.email
    student.mobile = student_params["mobile"]
    student.linkedin = student_params["linkedin"]
    student.github_user = student_params["github_user"]
    student.twitter = student_params["twitter"]
    req = Cloudinary::Uploader.upload(student_params["img"])
    student.img = req["url"]
    student.bio = student_params["bio"]
    student.user_id = current_user.id
    student.save
    redirect_to student_path(student)

    student.courses.delete_all
    arr.each do |a|
      course = Course.find_by(name: a)
      student.courses << course
    end
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit(:f_name, :l_name, :gender, :email, :mobile, :linkedin, :github_user, :twitter, :img, :bio)
  end
end
