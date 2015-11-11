FactoryGirl.define do
  factory :user do
    fname {Faker::Name.first_name}
    lname {Faker::Name.last_name}
    email {Faker::Internet.email}
    phone {Faker::PhoneNumber.phone_number}
    association :event
    association :vehicle
  end

end
