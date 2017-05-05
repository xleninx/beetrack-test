require 'rails_helper'

RSpec.describe Api::V1::WaypointsController, type: :controller do

  describe 'POST /api/v1/gps with ok params' do
    let(:ok_params) { { "latitude": 20.23, "longitude": -0.56, "sent_at": "2016-06-02 20:45:00", "vehicle_identifier": "HA-3452" } }
    it 'has a 200 status code' do
      post :create, params: ok_params
      expect(response.status).to eq(200)
    end
  end

  describe 'POST /api/v1/gps with wrong params' do
    let(:wrong_params) { { "latitude": 20.23, "longitude": -0.56, "sent_at": "2016-06-02 20:45:00", "vehicle_identifier": nil } }
    it 'has a 422 status code' do
      post :create, params: wrong_params
      expect(response.status).to eq(422)
    end
  end

end
