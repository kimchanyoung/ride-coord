# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FactoryGirl.create(:event)
FactoryGirl.create(:event)
FactoryGirl.create(:event)
FactoryGirl.create(:event)
FactoryGirl.create(:event)

Event.all.each do |event|
  Vehicle.create!({name: Faker::Lorem.word.capitalize, event_id: event.id})
  Rider.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number, event_id: event.id})
end


Vehicle.all.each do |vehicle|
  Rider.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number, vehicle_id: vehicle.id, event_id: vehicle.event.id})
end

