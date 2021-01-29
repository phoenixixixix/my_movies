FactoryBot.define do
  factory :ranking do
    association :user
    association :movie

    sequence(:mark) { |n| (n % 10) + 1 }
  end
end