FactoryBot.define do
  factory :movie do
    association :category

    sequence(:title) { |n| "sometitle_#{n}"}
    sequence(:description) { |n| "somedescription_#{n}" }

    factory :movie_with_ranking do
      after(:create) { |movie|
        u = create(:user)
        create(:ranking, movie: movie, user: u)
      }
    end
  end
end