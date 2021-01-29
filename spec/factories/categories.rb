FactoryBot.define do
  factory :category do
    sequence(:title) { |n| "category_#{n}" }
  end
end