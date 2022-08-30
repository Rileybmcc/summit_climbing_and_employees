class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def show
    @teacher = Instructor.all.find(params[:id])
  end


end
