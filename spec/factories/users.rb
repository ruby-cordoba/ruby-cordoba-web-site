FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user_#{n}@mail.com"}
    password 'secret'
    password_confirmation 'secret'
  end
end
