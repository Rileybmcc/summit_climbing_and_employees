class GymsController < ApplicationController

  def new
    @gym = Gym.new
    # render :new
  end
# require "pry"; binding.pry
  def create
    @gym = Gym.create
    redirect_to "/gyms"
  end

  def index
    @gyms_by_newest = Gym.all.order(:created_at)
  end

  def show
   @gym = Gym.all#.find(params[:id])
  end

  def teaching_staff
    @gym = Gym.all#.find(params[:id])

  end

end
