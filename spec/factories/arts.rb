# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :art do
    title "MyString"
    artist_id 1
    date_created "MyString"
    date_for_sale "MyString"
    type_id 1
    cost_in_cents 1
    available_for_purchase false
    collection_id 1
    customer_id 1
  end
end
