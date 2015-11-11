FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    association :event
    association :vehicle
  end

end
