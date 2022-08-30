class GymsFormsController < ApplicationController

def new
    @gym = Gym.new
    render :new
  end

  def create
    @gym = Gym.create
    redirect_to "/gyms"
  end


end
