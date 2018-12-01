class PagesController < ApplicationController
  def home
    @programs = Program.all
  end
end
