require 'rails_helper'

RSpec.describe Gym, type: :model do
  
  # it 'can access attributes' do
  #   # @gym1 = Gym.new( name: "Dyno Land", opening_time: 6, closing_time: 10,currently_open: true, customer_capacity: 85).save
  #   expect(@gym1.name).to eq("Dyno Land")
  #   expect(@gym1.opening_time).to eq(6)
  #   expect(@gym1.closing_time).to eq(10)
  #   expect(@gym1.open).to eq(true)
  #   expect(@gym1.capacity).to eq(85)
  # end
  it {should have_many :instructors}

end
