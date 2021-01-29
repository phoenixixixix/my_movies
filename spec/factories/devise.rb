FactoryBot.define do
  factory :user do
    id { 1 }
    email { 'test@user.com' }
    password { 'user123' }
    superadmin { false }
  end

  factory :admin do
    id {2}
    email {"test@admin.com"}
    password {"admin123"}
    superadmin { true }
  end
end