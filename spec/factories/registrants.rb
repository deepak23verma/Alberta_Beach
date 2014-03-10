require 'faker'

FactoryGirl.define do
  factory :registrant do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    email {Faker::Internet.email}
    age_group '1'
    how_heard 'Your Mom'
  end
end