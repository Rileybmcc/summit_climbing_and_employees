class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def profile
    @teacher = Instructor.find(params[:id])

  end

end
