require 'rails_helper'

RSpec.describe 'Cars API', type: :request do
  # initialize test data 
  let!(:cars) { create_list(:car, 10) }
  let(:car_type) { cars.first.car_type }
  let(:car_id) { cars.first.id }

  # Test suite for GET /cars
  describe 'GET /cars/:id' do
    before { get "/cars/#{car_type}" }

    context 'when the record exists' do
      it 'returns the cars with the type of given type' do
        expect(json).not_to be_empty
        expect(json['cars'].length).to eq(10)
        expect(json['cars'].first['car_type']).to match(car_type)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:car_type) { 'HYBRID' }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find the cars with the specific type/)
      end
    end
  end

  # Test suite for GET /car/:id
  describe 'GET /car/:id' do
    before { get "/car/#{car_id}" }

    context 'when the record exists' do
      it 'returns the car' do
        expect(json).not_to be_empty
        expect(json['car'].first['id']).to eq(car_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:car_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find car/)
      end
    end
  end
end