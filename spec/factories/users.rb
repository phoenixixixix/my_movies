FactoryGirl.define do
  factory :users do
    sequence(:email) { |n| "someguy_#{n}@mail.com"}

    superadmin false

    after(:build) { |u| u.password_confirmation = u.password = "password" }
  end
end
