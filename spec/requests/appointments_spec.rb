require 'rails_helper'

RSpec.describe 'Appointments API' do
  let!(:car) { create(:car) }
  let!(:user) { create(:user) }
  let!(:appointments) { create_list(:appointment, 20, car_id: car.id, user_id: user.id) }
  let(:user_id) { user.id }
  let(:id) { appointments.first.id }

  describe 'GET /appointments/:user_id' do
    before { get "/appointments/#{user_id}" }

    context 'when appointments exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all car appointments' do
        expect(json['appointments'].size).to eq(20)
      end
    end

    context 'when appointments does not exist' do
      let(:user_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find the appointments/)
      end
    end
  end

  describe 'POST /appointments' do
    let(:valid_attributes) { { date: '2020-10-10', city: 'Panama', car_id: car.id, user_id: user.id, car_name: 'Lexus' } }

    context 'when request attributes are valid' do
      before { post "/appointments", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end