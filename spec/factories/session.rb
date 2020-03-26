FactoryBot.define do
  factory :sessions do
    email { 'foo@bar.com' }
    password { '123456' }
  end
end