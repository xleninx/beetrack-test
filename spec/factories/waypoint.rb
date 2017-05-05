FactoryGirl.define do
  factory :waypoint do
    latitiude      { Faker::Address.latitude }
    longitude      { Faker::Address.longitude }
    sent_at        { Faker::Time.between(2.days.ago, Date.today, :all) }
    vehicle        { build(:vehicle) }
  end
end
