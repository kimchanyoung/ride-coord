FactoryGirl.define do
  factory :vehicle do
    name {"#{Faker::Lorem.word.capitalize} Mobile"}
    association :event
  end

end
