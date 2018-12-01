class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
    @program = Program.find_by(id: params[:id])
    ##Take the id of course from (courses_Controller)  #show
    session[:program_id] = @program.id
  end

  def new
    @program = Program.new
  end

  def create
    program = Program.create(program_params)
    redirect_to program_path(program)
  end

  def edit
    @program = Program.find_by(id: params[:id])
  end

  def update
    program = Program.find_by(id: params[:id])
    program.update(program_params)
    redirect_to program_path(program)
  end

  def destroy
    program = Program.find_by(id: params[:id])
    program.destroy
    redirect_to programs_path
  end

  private

  def program_params
    params.require(:program).permit(:name, :img, :short_description, :long_description)
  end
end
