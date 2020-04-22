FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.make_and_model }
    description { Faker::Lorem.sentence }
    signing { '$ 1,999.00' }
    month_fee { '$ 600.00' }
    lease_cash { '$ 1000.00' }
    price { '$ 10,000.00' }
    months { '36 Months' }
    car_type { 'SEDAN' }
    image { 'https://i.imgur.com/PnOPevH.png' }
  end
end