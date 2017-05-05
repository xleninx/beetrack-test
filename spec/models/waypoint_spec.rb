require 'rails_helper'

RSpec.describe Waypoint, type: :model do
  let(:waypoint_valid) { build(:waypoint) }
  let(:waypoint_invalid) { build(:waypoint, latitude: -100) }

  describe 'Creation of waypoint' do
    it 'should be successful' do
      expect(waypoint_valid.save).to be true
    end

    it 'should be missed' do
      expect(waypoint_invalid.save).to be false
    end
  end
end
