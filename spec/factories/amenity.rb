FactoryGirl.define do
  factory :amenity do
    name { Faker::Name.first_name }
  end
end
