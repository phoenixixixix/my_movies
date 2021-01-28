FactoryGirl.define do
  factory :rankings do
    association :user
    association :movie

    sequence(:mark) { |n| (n % 10) + 1 }
  end
end