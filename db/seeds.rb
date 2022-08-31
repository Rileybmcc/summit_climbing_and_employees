# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Aug 24 HW
gym1 = Gym.create( [{name: "Dyno Land"}, {opening_time: 6}, {closing_time: 10},{currently_open: true}, {customer_capacity: 85}])
gym2 = Gym.create( [{name: "Canyon Land"}, {opening_time: 8}, {closing_time}: 12,{currently_open: true}, {customer_capacity: 50}])
instructor1 = Instructor.create([{name: 'John'}, {gym_id: 1}, {hours_taught: 55.4}, {teaches_lead_climbing: true}])
instructor2 = Instructor.create([{name: 'Elizabeth'}, {gym_id: 2}, {hours_taught: 12.0}, {teaches_lead_climbing: true}])
instructor3 = Instructor.create([{name: 'Rachael'}, {gym_id: 1}, {hours_taught: 87.2}, {teaches_lead_climbing: false}])
