# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    name "MyString"
    street_address "MyString"
    city "MyString"
    state "MyString"
    zip_code "MyString"
    phone_number "MyString"
    birthplace "MyString"
    style "MyString"
  end
end
