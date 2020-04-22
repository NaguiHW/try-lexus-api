require 'rails_helper'

RSpec.describe 'Appointments API' do
  # Initialize the test data
  let!(:car) { create(:car) }
  let!(:appointments) { create_list(:appointment, 20, car_id: car.id) }
  let(:car_id) { car.id }
  let(:id) { appointments.first.id }

  # Test suite for GET /cars/:car_id/appointments
  describe 'GET /appointments/:car_id' do
    before { get "/appointments/#{car_id}" }

    context 'when car exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all car appointments' do
        expect(json['appointments'].size).to eq(20)
      end
    end

    context 'when car does not exist' do
      let(:car_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Car/)
      end
    end
  end

  # Test suite for PUT /cars/:car_id/appointments
  describe 'POST /cars/:car_id/appointments' do
    let(:valid_attributes) { { date: '2020-10-10', city: 'Panama', car_id: 1 } }

    context 'when request attributes are valid' do
      before { post "/appointments", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end