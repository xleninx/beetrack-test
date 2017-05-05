require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  let(:vehicle_valid) { build(:vehicle) }
  let(:vehicle_invalid) { build(:vehicle, identifier: nil) }

  describe 'Creation of vehicle' do
    it 'should be successful' do
      expect(vehicle_valid.save).to be true
    end

    it 'should be missed' do
      expect(vehicle_invalid.save).to be false
    end
  end
end
