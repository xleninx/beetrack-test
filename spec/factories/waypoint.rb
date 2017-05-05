FactoryGirl.define do
  factory :waypoint do
    latitude      { Faker::Address.latitude }
    longitude      { Faker::Address.longitude }
    vehicle        { build(:vehicle) }
  end
end
