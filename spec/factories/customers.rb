# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "MyString"
    street_address "MyString"
    city "MyString"
    state "MyString"
    phone "MyString"
  end
end
