FactoryGirl.define do
  factory :waypoint do
    latitude      { Faker::Address.latitude }
    longitude      { Faker::Address.longitude }
    vehicle        { build(:vehicle) }
    sent_at        { Time.now }
  end
end
