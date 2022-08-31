require 'rails_helper'

RSpec.describe 'Instructors Index' do

  before :each do
    @gym1 = Gym.create!( name: "Dyno Land", opening_time: 6, closing_time: 10,currently_open: true, customer_capacity: 85)
    @gym2 = Gym.create!( name: "Canyon Land", opening_time: 8, closing_time: 12,currently_open: true, customer_capacity: 50)
    @staff1 = @gym1.instructors.create!( name: "John", gym_id: 1, number_of_students: 4, hours_taught: 76.5,lead_climbing_instructor: true)
    @staff2 = @gym1.instructors.create!( name: "Mary", gym_id: 1, number_of_students: 2, hours_taught: 32.7,lead_climbing_instructor: false)
  end

  it 'shows all instructors' do
    visit "/instructors"

    expect(page).to have_content(@staff1.name)
    expect(page).to have_content(@staff2.name)
  end

  it 'displays all instructor info' do
    visit "/instructors/#{@staff1.id}"

    expect(page).to have_content(@staff1.name)
    expect(page).to have_content((@staff1.gym).name)
    expect(page).to have_content(@staff1.number_of_students)
    expect(page).to have_content(@staff1.hours_taught)
    expect(page).to have_content(@staff1.lead_climbing_instructor)
  end

  it 'shows all instructors at a gym' do
    visit "/gyms/#{@gym1.id}/instructors"

    expect(page).to have_content(@staff1.name)
    expect(page).to have_content(@staff2.name)
  end

  it 'links to all instructors of gym page' do
    visit "/gyms/#{@gym1.id}/instructors"
    expect have_link("Meet the Instructors of #{@gym1.name}", :href => "http://localhost:3000/gyms/<%=@gym.id%>/instructors")
    expect(current_path).to eq("/gyms/#{@gym1.id}/instructors")
  end

end
