FactoryBot.define do
  factory :user do
    username { Faker::Internet.username(specifier: 3..15) }
    password { 'password' }
  end
end
