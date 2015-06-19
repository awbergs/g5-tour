FactoryGirl.define do
  factory :tour_request do
    email { Faker::Internet.email }
    token { DateTime.now.strftime('%Q') }
  end
end
