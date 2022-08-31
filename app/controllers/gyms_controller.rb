class GymsController < ApplicationController

  def new
    @gym = Gym.new
    render :new
  end

  def create
    @gym = Gym.create!({name: params[:name],
      opening_time: params[:opening_time],
      closing_time: params[:closing_time],
      currently_open: params[:currently_open],
      customer_capacity: params[:customer_capacity]})
    redirect_to "/gyms/"
  end

  def edit
    @gym = Gym.find(params[:id])
  end

  def update
    @gym = Gym.find(params[:id])
    @gym.update(gym_params)
    @gym.save
    redirect_to "/gyms/#{@gym.id}"
  end

  def index
    @gyms_by_newest = Gym.all.order(:created_at)
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def teaching_staff
    @gym = Gym.all 
  end

  private

  def gym_params
    params.permit(:name, :opening_time, :closing_time, :currently_open, :customer_capacity )
  end

end
