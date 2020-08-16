FactoryBot.define do
  factory :message do
    body { Faker::Lorem.paragraph }
    association :user
  end
end
