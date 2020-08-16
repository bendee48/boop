FactoryBot.define do
  factory :user do
    id { rand(1..100) }
    username { Faker::Internet.username(specifier: 3..15) }
    password { 'password' }
  end
end
