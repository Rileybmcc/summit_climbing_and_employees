class GymsController < ApplicationController

  def index
    @gyms = Gym.all
    @gyms_by_newest = Gym.all.order(:created_at)
  end

  def show
   @gym = Gym.find(params[:id])
  end

  def teaching_staff
    @gym = Gym.find(params[:id])
  end

  def add_new_gym
    # @gym = Gym.new
    # render :new
  end

  def create
    
  end
end
