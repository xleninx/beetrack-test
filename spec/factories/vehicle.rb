FactoryGirl.define do
  factory :vehicle do
    identifier      { Faker::Code.isbn }
  end
end
