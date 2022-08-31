require 'rails_helper'

RSpec.describe 'Gyms Index' do

  before :each do
    @gym1 = Gym.create!( name: "Dyno Land", opening_time: 6, closing_time: 10,currently_open: true, customer_capacity: 85)
    @gym2 = Gym.create!( name: "Canyon Land", opening_time: 8, closing_time: 12,currently_open: true, customer_capacity: 50)
    @staff1 = @gym1.instructors.create!( name: "John", gym_id: 1, number_of_students: 4, hours_taught: 76.5,lead_climbing_instructor: true)
    @staff2 = @gym1.instructors.create!( name: "Mary", gym_id: 1, number_of_students: 2, hours_taught: 32.7,lead_climbing_instructor: false)

  end

  it 'shows all gyms' do
    visit "/gyms"

    expect(page).to have_content(@gym1.name)
    expect(page).to have_content(@gym2.name)
  end

  it 'shows all gyms in order of creation' do
    visit "/gyms"
    gym2 = Gym.create!( name: "Canyon Land", opening_time: 8, closing_time: 12,currently_open: true, customer_capacity: 50)
    gym1 = Gym.create!( name: "Dyno Land", opening_time: 6, closing_time: 10,currently_open: true, customer_capacity: 85)

    expect("#{gym1.name}").to appear_before("#{gym2.name}")
  end


  it 'displays all gym info' do
    visit "/gyms/#{@gym1.id}"

    expect(page).to have_content(@gym1.name)
    expect(page).to have_content(@gym1.opening_time)
    expect(page).to have_content(@gym1.closing_time)
    expect(page).to have_content(@gym1.currently_open)
    expect(page).to have_content(@gym1.customer_capacity)
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

  it 'can use link to get to create gym page' do
    visit '/gyms'
    click_on 'Add New Climbing Gym'

    expect(current_path).to eq('/gyms/new')
  end

  it 'can create new Gym' do
    visit '/gyms/new'

    fill_in('Name', with: 'Base Camp')
    fill_in('Opening time', with: '7')
    fill_in('Closing time', with: '20')
    fill_in('Currently open', with: 'True')
    fill_in('Customer capacity', with: '60')
    click_on('Create Gym')

    new_gym = Gym.last
    expect(current_path).to eq("/gyms/")
    expect(page).to have_content("Base Camp")
  end

  it 'can update gyms info' do
    visit "/gyms/#{@gym1.id}/edit"

    fill_in('Name', with: 'Base Camp 101')
    click_on 'Submit'

    expect(current_path).to eq("/gyms/#{@gym.id}")
    expect(page).to have_content("Base Camp 101")
  end

end
