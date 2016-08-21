FactoryGirl.define do
  factory :user do
    sequence(:email)  { |n| "user_#{n}@baycare.org"}
    password          'password'
  end
end
