FactoryGirl.define do
  factory :user do
    name "Carl"
    email "carl@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end