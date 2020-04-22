FactoryBot.define do
  factory :appointment do
    user_id nil
    car_id nil
    date { Faker::Date.between(from: 7.days.ago, to: Date.today) }
    city { Faker::Address.city }
    car_name { Faker::Vehicle.make_and_model }
  end
end