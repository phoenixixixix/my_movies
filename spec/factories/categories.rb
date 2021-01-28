FactoryGirl.define do
  factory :categories do
    sequence(:title) { |n| "someguy_#{n}" }
  end
end